# store the item physically for whitelist and blacklist check
setblock 1000002 71 1000000 chest
data modify block 1000002 71 1000000 Items set value []
$data modify block 1000002 71 1000000 Items append from entity @s $(component).components.minecraft:container[{slot:$(shulker_slot)}].item

# calculate amount
$function cooley:tax/slot/amt {location:"$(component).components.minecraft:container[{slot:$(shulker_slot)}].item",check:"container.0",phys:"block 1000002 71 1000000"}

# get the item from the player
$data modify storage cooley:storage root.temp.item set from entity @s $(component).components.minecraft:container[{slot:$(shulker_slot)}]

# set the item's slot to be the current one
$data modify storage cooley:storage root.temp.item.item.Slot set value $(shulker_slot)b

# set amount
execute store result storage cooley:storage root.temp.count int 1 run scoreboard players get #item_amt co_math
data modify storage cooley:storage root.temp.item.item.count set from storage cooley:storage root.temp.count

# put the item into the physical shulker
execute unless score #item_amt co_math matches 0 run data modify block 1000000 71 1000000 Items append from storage cooley:storage root.temp.item.item



