execute store result storage cooley:storage root.temp.hotbar_slot int 1 run scoreboard players get #hotbar_slot co_math

scoreboard players operation #shift_slot co_math = #hotbar_slot co_math
execute store result storage cooley:storage root.temp.shift_slot int 1 run scoreboard players get #shift_slot co_math


function cooley:tax/hotbar_slot with storage cooley:storage root.temp


