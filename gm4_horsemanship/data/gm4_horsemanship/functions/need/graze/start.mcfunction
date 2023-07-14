
execute unless entity @e[type=#gm4_horsemanship:horse,tag=gm4_horse.grazing] run schedule function gm4_horsemanship:need/graze/tick 1t
tag @s add gm4_horse.grazing
