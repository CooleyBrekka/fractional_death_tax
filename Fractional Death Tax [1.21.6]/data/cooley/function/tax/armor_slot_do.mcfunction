$function cooley:tax/slot/amt {location:"equipment.$(armor)"}

# get item amt and slot for the set macro
execute store result storage cooley:storage root.temp.count int 1 run scoreboard players get #item_amt co_math
$data modify storage cooley:storage root.temp.slot set value "armor.$(armor)"

#say tax set
function cooley:tax/slot/set with storage cooley:storage root.temp


