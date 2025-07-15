$data modify storage cooley:storage root.temp.shulker_color set from entity @s $(slot).id

# setup up physical storage and clear previous usage
function cooley:tax/container/shulker_color with storage cooley:storage root.temp
setblock 1000001 71 1000000 chest
item replace block 1000001 71 1000000 container.0 with air

