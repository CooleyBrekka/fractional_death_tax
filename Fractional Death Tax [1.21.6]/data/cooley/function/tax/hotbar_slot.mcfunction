# if item found in slot, get its count
$execute if items entity @s hotbar.$(hotbar_slot) * run function cooley:tax/hotbar_slot_do with storage cooley:storage root.temp

$execute if items entity @s hotbar.$(hotbar_slot) #minecraft:shulker_boxes run function cooley:tax/container/hotbar_shulker_for with storage cooley:storage root.temp
#$execute if items entity @s hotbar.$(hotbar_slot) #minecraft:bundles run function cooley:tax/container/hotbar_bundle_for with storage cooley:storage root.temp


