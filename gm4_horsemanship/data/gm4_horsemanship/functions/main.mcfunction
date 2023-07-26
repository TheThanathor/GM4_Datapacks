schedule function gm4_horsemanship:main 16t

# horse processing
execute as @e[type=#gm4_horsemanship:horse,tag=gm4_horse] at @s run function gm4_horsemanship:horse_submain
scoreboard players reset @a gm4_horse_riding

# horse grazing
execute as @e[type=#gm4_horsemanship:horse,tag=!gm4_horse.grazing,nbt={EatingHaystack:1b}] run function gm4_horsemanship:need/graze/start



# TEMP DEV COMMAND
execute as Thanathor at @s as @e[type=#gm4_horsemanship:horse,limit=1,sort=nearest] run title Thanathor actionbar [{"text":"Lvl: ","color":"gray"},{"score":{"name":"@s","objective":"gm4_horse_level"},"color":"white"},{"text":" | XP: "},{"score":{"name":"@s","objective":"gm4_horse_experience"},"color":"white"},{"text":" | Graze: "},{"score":{"name":"@s","objective":"gm4_horse_need.graze"},"color":"white"},{"text":"/1800 | Social: "},{"score":{"name":"@s","objective":"gm4_horse_need.social"},"color":"white"},{"text":"/100 | Care: "},{"score":{"name":"@s","objective":"gm4_horse_need.care"},"color":"white"},{"text":"/100 Stamina: "},{"score":{"name":"@s","objective":"gm4_horse_need.stamina"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"gm4_horse_need.stamina_cap"}}]
