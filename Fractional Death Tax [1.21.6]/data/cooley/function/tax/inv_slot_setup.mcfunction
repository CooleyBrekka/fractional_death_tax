execute store result storage cooley:storage root.temp.inv_slot int 1 run scoreboard players get #inv_slot co_math

scoreboard players operation #shift_slot co_math = #inv_slot co_math
scoreboard players add #shift_slot co_math 9
execute store result storage cooley:storage root.temp.shift_slot int 1 run scoreboard players get #shift_slot co_math


function cooley:tax/inv_slot with storage cooley:storage root.temp



