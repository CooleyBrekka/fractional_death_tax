function cooley:tax/slot/init

# get exact item amt
$execute store result score #item_amt co_math run data get entity @s Inventory[{Slot:$(shift_slot)b}].count

function cooley:tax/slot/amt

# get item amt and slot for the set macro
execute store result storage cooley:storage root.temp.count int 1 run scoreboard players get #item_amt co_math
$data modify storage cooley:storage root.temp.slot set value "inventory.$(inv_slot)"

function cooley:tax/slot/set with storage cooley:storage root.temp


