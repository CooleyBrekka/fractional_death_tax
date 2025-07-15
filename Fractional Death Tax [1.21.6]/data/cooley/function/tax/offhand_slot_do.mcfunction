function cooley:tax/slot/init

# get exact item amt
execute store result score #item_amt co_math run data get entity @s equipment.offhand.count
#say execute store result score #item_amt co_math run data get entity @s equipment.offhand.count

function cooley:tax/slot/amt

# get item amt and slot for the set macro
execute store result storage cooley:storage root.temp.count int 1 run scoreboard players get #item_amt co_math
data modify storage cooley:storage root.temp.slot set value "weapon.offhand"

#say tax set
function cooley:tax/slot/set with storage cooley:storage root.temp


