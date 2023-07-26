
execute as @e[type=#gm4_horsemanship:horse,tag=gm4_horse_portal] on controller run tag @s remove gm4_player_portal
execute as @e[type=#gm4_horsemanship:horse,tag=gm4_horse_portal] on controller at @s run playsound block.portal.travel ambient @s ~ ~ ~ 0.25 1
execute as @e[type=#gm4_horsemanship:horse,tag=gm4_horse_portal] on controller on vehicle run tag @s remove gm4_horse_portal
tp @p[tag=gm4_player_portal] @e[type=#gm4_horsemanship:horse,tag=gm4_horse_portal,limit=1]
ride @p[tag=gm4_player_portal] mount @e[type=#gm4_horsemanship:horse,tag=gm4_horse_portal,limit=1]
execute if entity @a[tag=gm4_player_portal] run schedule function gm4_horsemanship:riding/portal/tick 1t
