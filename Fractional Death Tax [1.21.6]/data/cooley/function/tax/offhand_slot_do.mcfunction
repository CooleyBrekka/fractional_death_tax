scoreboard players set #item_amt co_math 3

# get exact item amt
execute store result score #item_amt co_math run data get entity @s equipment.offhand.count
#say execute store result score #item_amt co_math run data get entity @s equipment.offhand.count

# subtract the taxed fraction of item (rounds down by default)
#tellraw @a [{"score":{"name":"#item_amt",objective:"co_math"}}]
scoreboard players operation #tax_penalty co_math = #item_amt co_math
scoreboard players operation #tax_penalty co_math *= #tax_numerator co_math
scoreboard players operation #tax_penalty co_math /= #tax_denominator co_math

scoreboard players operation #item_amt co_math -= #tax_penalty co_math

# get item amt and slot for the set macro
execute store result storage cooley:storage root.temp.count int 1 run scoreboard players get #item_amt co_math
data modify storage cooley:storage root.temp.slot set value "weapon.offhand"

#say tax set
function cooley:tax/set with storage cooley:storage root.temp


