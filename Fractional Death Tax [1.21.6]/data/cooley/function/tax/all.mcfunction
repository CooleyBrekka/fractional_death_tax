function cooley:storage/forloop {iter:0,max_iter:27,current:"#inv_slot co_math",command:"function cooley:tax/inv_slot_setup"}

function cooley:storage/forloop {iter:0,max_iter:9,current:"#hotbar_slot co_math",command:"function cooley:tax/hotbar_slot_setup"}

function cooley:tax/offhand_slot_setup

#execute if items entity @s inventory.15 #minecraft:axes
#execute if data entity @s Inventory[0].components.minecraft:container[0]
#data get entity @s Inventory[{Slot:4b}].components.minecraft:container[{slot:12}]
#loot give @s mine ~ ~-1 ~


