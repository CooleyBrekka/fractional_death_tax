forceload add 1000000 1000000
scoreboard objectives add co_math dummy

scoreboard objectives add tax_death deathCount
gamerule keepInventory true

execute unless score #first_load co_math matches 1 run function cooley:first_load



