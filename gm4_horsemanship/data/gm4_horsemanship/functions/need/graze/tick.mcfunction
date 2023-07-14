
execute as @e[type=#gm4_horsemanship:horse,tag=gm4_horse.grazing,nbt={EatingHaystack:0b}] at @s run function gm4_horsemanship:need/graze/complete

execute if entity @e[type=#gm4_horsemanship:horse,tag=gm4_horse.grazing] run schedule function gm4_horsemanship:need/graze/tick 1t
