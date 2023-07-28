# apply brushing effects
# @s = gm4_horse being brushed
# at @s
# run from need/care/brush/process

# vfx
particle happy_villager ~ ~0.6 ~ 0.4 1 0.4 0 12
playsound minecraft:entity.horse.ambient neutral @a ~ ~ ~ 0.6 0.7
execute at @p[tag=gm4_target] run playsound item.brush.brushing.generic player @a ~ ~ ~ 3 0

# scoreboards
scoreboard players add @s gm4_horse_need.care 2000
scoreboard players operation @s gm4_horse_need.care < $need_cap.care gm4_horse_data
scoreboard players set @s gm4_horse_brushed 750
