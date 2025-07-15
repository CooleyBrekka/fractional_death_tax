scoreboard players set #item_amt co_math 3

# get exact item amt
$execute store result score #item_amt co_math run data get entity @s Inventory[{Slot:$(shift_slot)b}].components.minecraft:container[{slot:$(shulker_slot)}].item.count

# remove vanishing items
$execute if data entity @s Inventory[{Slot:$(shift_slot)b}].components.minecraft:container[{slot:$(shulker_slot)}].item.components."minecraft:enchantments"."minecraft:vanishing_curse" if score #tax_vanishing co_math matches 1 run scoreboard players set #item_amt co_math 0

#$execute if data entity @s Inventory[{Slot:$(shift_slot)b}].components.minecraft:container[{slot:$(shulker_slot)}].item.components."minecraft:enchantments"."minecraft:vanishing_curse" if score #tax_vanishing co_math matches 1 run say execute if data entity @s Inventory[{Slot:$(shift_slot)b}].components.minecraft:container[{slot:$(shulker_slot)}].item.components."minecraft:enchantments"."minecraft:vanishing_curse"
#tellraw @a [{"score":{"name":"#item_amt",objective:"co_math"}}]
#$say [interior] shift slot: $(shift_slot), shulker slot: $(shulker_slot)

scoreboard players operation #tax_penalty co_math = #item_amt co_math
scoreboard players operation #tax_penalty co_math *= #tax_numerator co_math
scoreboard players operation #tax_penalty co_math /= #tax_denominator co_math

scoreboard players operation #item_amt co_math -= #tax_penalty co_math

# get the item from the player
$data modify storage cooley:storage root.temp.item set from entity @s Inventory[{Slot:$(shift_slot)b}].components.minecraft:container[{slot:$(shulker_slot)}]

# set the item's slot to be the current one
$data modify storage cooley:storage root.temp.item.item.Slot set value $(shulker_slot)b

# set amount
execute store result storage cooley:storage root.temp.count int 1 run scoreboard players get #item_amt co_math
data modify storage cooley:storage root.temp.item.item.count set from storage cooley:storage root.temp.count

# put the item into the physical shulker
execute unless score #item_amt co_math matches 0 run data modify block 1000000 71 1000000 Items append from storage cooley:storage root.temp.item.item



