# if contains item, tax this slot
$execute if items entity @s inventory.$(inv_slot) * run function cooley:tax/inv_slot_do with storage cooley:storage root.temp

# if contains shulker, tax it
$execute if items entity @s inventory.$(inv_slot) #minecraft:shulker_boxes run function cooley:tax/container/shulker_for {setup:"Inventory[{Slot:$(shift_slot)b}]",replace:"inventory.$(inv_slot)"}




