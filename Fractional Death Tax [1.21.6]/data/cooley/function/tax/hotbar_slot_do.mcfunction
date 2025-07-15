$function cooley:tax/slot/amt {location:"Inventory[{Slot:$(shift_slot)b}]"}

# get item amt and slot for the set macro
execute store result storage cooley:storage root.temp.count int 1 run scoreboard players get #item_amt co_math
$data modify storage cooley:storage root.temp.slot set value "hotbar.$(hotbar_slot)"

function cooley:tax/slot/set with storage cooley:storage root.temp


