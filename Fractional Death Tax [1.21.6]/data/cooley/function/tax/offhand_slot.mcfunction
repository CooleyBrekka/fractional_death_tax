# if item found in slot, get its count
execute if items entity @s weapon.offhand * run function cooley:tax/offhand_slot_do with storage cooley:storage root.temp

execute if items entity @s weapon.offhand #minecraft:shulker_boxes run function cooley:tax/container/offhand_shulker_for with storage cooley:storage root.temp
#execute if items entity @s weapon.offhand #minecraft:bundles run function cooley:tax/container/hotbar_bundle_for with storage cooley:storage root.temp


