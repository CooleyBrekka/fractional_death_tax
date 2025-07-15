$execute if data entity @s Inventory[{Slot:$(shift_slot)b}].components.minecraft:container[{slot:$(shulker_slot)}] run function cooley:tax/container/generic_shulker_do with storage cooley:storage root.temp

#$say shift slot: $(shift_slot), shulker slot: $(shulker_slot)

