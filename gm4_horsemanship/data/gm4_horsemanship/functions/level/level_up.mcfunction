# apply level-up to gm4_horse
# @s = gm4_horse
# at @s
# run from horse_processsing/general

# store attributes in storage for modification
data modify storage gm4_horse:temp Attributes set from entity @s Attributes

# | Max Health
execute store result score $health gm4_horse_data run data get storage gm4_horse:temp Attributes[{Name:"minecraft:generic.max_health"}].Modifiers[{Name:"gm4_horse.health"}].Amount 10
execute store result storage gm4_horse:temp Attributes[{Name:"minecraft:generic.max_health"}].Modifiers[{Name:"gm4_horse.health"}].Amount double 0.1 run scoreboard players add $health gm4_horse_data 20

# | Movement Speed
execute store result score $speed gm4_horse_data run data get storage gm4_horse:temp Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[{Name:"gm4_horse.speed"}].Amount 100000
execute store result storage gm4_horse:temp Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[{Name:"gm4_horse.speed"}].Amount double 0.00001 run scoreboard players operation $speed gm4_horse_data += @s gm4_horse_speed_step

# | Jump Strength
execute store result score $jump gm4_horse_data run data get storage gm4_horse:temp Attributes[{Name:"minecraft:horse.jump_strength"}].Modifiers[{Name:"gm4_horse.jump"}].Amount 100000
execute store result storage gm4_horse:temp Attributes[{Name:"minecraft:horse.jump_strength"}].Modifiers[{Name:"gm4_horse.jump"}].Amount double 0.00001 run scoreboard players operation $jump gm4_horse_data += @s gm4_horse_jump_step

# | Scores
scoreboard players add @s gm4_horse_level 1
scoreboard players operation @s gm4_horse_need.stamina_cap += $need_cap.stamina_step gm4_horse_data
scoreboard players operation @s gm4_horse_need.stamina += $need_cap.stamina_step gm4_horse_data
scoreboard players set @s gm4_horse_experience 0

# set new needed experience
execute if score @s gm4_horse_level matches 1 run scoreboard players set @s gm4_horse_experience 15
execute if score @s gm4_horse_level matches 2 run scoreboard players set @s gm4_horse_experience 20
execute if score @s gm4_horse_level matches 3 run scoreboard players set @s gm4_horse_experience 30
execute if score @s gm4_horse_level matches 4 run scoreboard players set @s gm4_horse_experience 45
execute if score @s gm4_horse_level matches 5 run scoreboard players set @s gm4_horse_experience 65
execute if score @s gm4_horse_level matches 6 run scoreboard players set @s gm4_horse_experience 90
execute if score @s gm4_horse_level matches 7 run scoreboard players set @s gm4_horse_experience 120
execute if score @s gm4_horse_level matches 8 run scoreboard players set @s gm4_horse_experience 165
execute if score @s gm4_horse_level matches 9 run scoreboard players set @s gm4_horse_experience 225
execute if score @s gm4_horse_level matches 10 run scoreboard players set @s gm4_horse_experience 300
execute if score @s gm4_horse_level matches 11 run scoreboard players set @s gm4_horse_experience 420
execute if score @s gm4_horse_level matches 12 run scoreboard players set @s gm4_horse_experience 600
execute if score @s gm4_horse_level matches 13 run scoreboard players set @s gm4_horse_experience 900
execute if score @s gm4_horse_level matches 14 run scoreboard players set @s gm4_horse_experience 1350

# modify attributes from storage
attribute @s generic.max_health modifier remove ff41dfbd-0833-4a74-be0d-dc91f70b16e7
attribute @s generic.movement_speed modifier remove 3a1ea8aa-6798-46e0-bd66-76def508f9f3
attribute @s horse.jump_strength modifier remove 4c7ad001-d21b-4f95-8cc8-d5ca8ae37796
data modify entity @s Attributes set from storage gm4_horse:temp Attributes
data remove storage gm4_horse:temp Attributes

# vfx
particle happy_villager ~ ~1 ~ 1 1 1 0 16
playsound entity.player.levelup neutral @a ~ ~1 ~ 0.7 1.6
effect give @s minecraft:regeneration 3 1