# if contains item, tax this slot
execute if items entity @s weapon.offhand * run function cooley:tax/offhand_slot_do with storage cooley:storage root.temp

# if contains shulker, tax it
execute if items entity @s weapon.offhand #minecraft:shulker_boxes run function cooley:tax/container/shulker_for {setup:"equipment.offhand",replace:"weapon.offhand"}


