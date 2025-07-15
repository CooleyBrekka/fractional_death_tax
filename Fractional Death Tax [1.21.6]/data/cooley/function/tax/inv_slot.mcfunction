# if item found in slot, get its count
$execute if items entity @s inventory.$(inv_slot) * run function cooley:tax/inv_slot_do with storage cooley:storage root.temp

$execute if items entity @s inventory.$(inv_slot) #minecraft:shulker_boxes run function cooley:tax/container/inv_shulker_for with storage cooley:storage root.temp
#$execute if items entity @s inventory.$(inv_slot) #minecraft:bundles run function cooley:tax/container/inv_bundle_for with storage cooley:storage root.temp


