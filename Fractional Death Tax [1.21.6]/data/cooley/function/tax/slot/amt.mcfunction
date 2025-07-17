scoreboard players set #item_amt co_math 3

# get exact item amt
$execute store result score #item_amt co_math run data get entity @s $(location).count

# remove vanishing items
$execute if data entity @s $(location).components."minecraft:enchantments"."minecraft:vanishing_curse" if score #tax_vanishing co_math matches 1 run scoreboard players set #item_amt co_math 0

# if item shouldn't be modified, leave (vanishing items still vanish)
$execute if score #tax_safe co_math matches 1 if items $(phys) $(check) #cooley:whitelist run return 0
$execute if score #tax_safe co_math matches 0 unless items $(phys) $(check) #cooley:blacklist run return 0

# subtract the taxed fraction of item (rounds down by default)
scoreboard players operation #tax_penalty co_math = #item_amt co_math
scoreboard players operation #tax_penalty co_math *= #tax_numerator co_math
scoreboard players operation #tax_penalty co_math /= #tax_denominator co_math

scoreboard players operation #item_amt co_math -= #tax_penalty co_math



