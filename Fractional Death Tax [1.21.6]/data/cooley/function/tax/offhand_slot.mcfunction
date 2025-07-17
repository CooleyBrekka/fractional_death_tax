# if item found in slot, get its count
execute if score #tax_safe co_math matches 1 unless items entity @s weapon.offhand #cooley:whitelist run function cooley:tax/offhand_slot_do with storage cooley:storage root.temp
execute if score #tax_safe co_math matches 0 if items entity @s weapon.offhand #cooley:blacklist run function cooley:tax/offhand_slot_do with storage cooley:storage root.temp

execute if items entity @s weapon.offhand #minecraft:shulker_boxes run function cooley:tax/container/offhand_shulker_for with storage cooley:storage root.temp
#execute if items entity @s weapon.offhand #minecraft:bundles run function cooley:tax/container/hotbar_bundle_for with storage cooley:storage root.temp


