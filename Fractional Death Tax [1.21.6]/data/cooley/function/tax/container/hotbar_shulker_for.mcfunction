$function cooley:tax/container/setup {slot:"Inventory[{Slot:$(shift_slot)b}]"}

# copy the stuff into the box
function cooley:storage/forloop {iter:0,max_iter:27,current:"#shulker_slot co_math",command:"function cooley:tax/container/generic_shulker_setup"}

# put the shulker in the chest
loot insert 1000001 71 1000000 mine 1000000 71 1000000

# move the shulker from chest to inventory
$item replace entity @s hotbar.$(hotbar_slot) from block 1000001 71 1000000 container.0

