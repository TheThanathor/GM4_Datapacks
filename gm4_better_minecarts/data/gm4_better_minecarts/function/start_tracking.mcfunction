
ride @p[tag=gm4_self] dismount

summon interaction ~ ~ ~ {width:0.01,height:0.01,Tags:["gm4_better_minecart","gm4_new_better_minecart"]}
tag @s add gm4_better_minecart

ride @e[type=interaction,tag=gm4_new_better_minecart,limit=1,distance=..0.1] mount @s
ride @p[tag=gm4_self] mount @e[type=interaction,tag=gm4_new_better_minecart,limit=1,distance=..0.1]
tag @e[type=interaction,tag=gm4_new_better_minecart,limit=1,distance=..0.1] remove gm4_new_better_minecart
