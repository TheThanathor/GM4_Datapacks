# init a new gm4_horse
# @s = new gm4_horse
# at @s
# run from tame_horse

tag @s add gm4_horse

# add required attributes
attribute @s generic.max_health modifier add ff41dfbd-0833-4a74-be0d-dc91f70b16e7 "gm4_horse.health" 10 add
attribute @s generic.max_health modifier add 5c1c6762-ba91-42b1-b278-dfce16d9fa4b "gm4_horse.fake_health" 1.1 add
attribute @s generic.movement_speed modifier add 3a1ea8aa-6798-46e0-bd66-76def508f9f3 "gm4_horse.speed" 0 add
attribute @s horse.jump_strength modifier add 4c7ad001-d21b-4f95-8cc8-d5ca8ae37796 "gm4_horse.jump" 0 add
attribute @s generic.max_health modifier add bdfdceca-918f-4766-b3ce-be87c6897fe5 "gm4_horse.health.remove_base" 0 add
attribute @s generic.movement_speed modifier add 6a9deea3-9bee-4c68-8be8-3b968e5b6028 "gm4_horse.speed.remove_base" 0 add
attribute @s horse.jump_strength modifier add 169c7466-d7a7-41de-80bb-4ef364a2642b "gm4_horse.jump.remove_base" 0 add

# store attributes in storage for modification
data modify storage gm4_horse:temp Attributes set from entity @s Attributes

# | Max Health
execute store result storage gm4_horse:temp Attributes[{Name:"minecraft:generic.max_health"}].Modifiers[{Name:"gm4_horse.health.remove_base"}].Amount double -1 run attribute @s generic.max_health base get

# | Movement Speed
execute store result storage gm4_horse:temp Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[{Name:"gm4_horse.speed.remove_base"}].Amount double -0.00001 run attribute @s generic.movement_speed base get 100000
execute store result score $speed.start gm4_horse_data run attribute @s generic.movement_speed base get 100000
scoreboard players operation @s gm4_horse_speed_step = $speed.start gm4_horse_data
scoreboard players operation @s gm4_horse_speed_step *= #1405 gm4_horse_data
scoreboard players operation @s gm4_horse_speed_step /= #1000 gm4_horse_data

scoreboard players add $speed.start gm4_horse_data 20000
scoreboard players operation $speed.start gm4_horse_data *= #1000 gm4_horse_data
execute store result storage gm4_horse:temp Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[{Name:"gm4_horse.speed"}].Amount double 0.00001 run scoreboard players operation $speed.start gm4_horse_data /= #4216 gm4_horse_data

scoreboard players operation @s gm4_horse_speed_step -= $speed.start gm4_horse_data
scoreboard players operation @s gm4_horse_speed_step /= #15 gm4_horse_data

# | Jump Strength (uses a lower scale to avoid going over the int limit)
execute store result storage gm4_horse:temp Attributes[{Name:"minecraft:horse.jump_strength"}].Modifiers[{Name:"gm4_horse.jump.remove_base"}].Amount double -0.00001 run attribute @s horse.jump_strength base get 100000
execute store result score $jump.start gm4_horse_data run attribute @s horse.jump_strength base get 10000
scoreboard players set @s gm4_horse_jump_step 21000
scoreboard players operation @s gm4_horse_jump_step -= $jump.start gm4_horse_data
scoreboard players operation @s gm4_horse_jump_step *= $jump.start gm4_horse_data
scoreboard players operation @s gm4_horse_jump_step /= #1000 gm4_horse_data

scoreboard players remove $jump.start gm4_horse_data 4000
scoreboard players operation $jump.start gm4_horse_data *= #10 gm4_horse_data
scoreboard players operation $jump.start gm4_horse_data /= #4 gm4_horse_data
execute store result storage gm4_horse:temp Attributes[{Name:"minecraft:horse.jump_strength"}].Modifiers[{Name:"gm4_horse.jump"}].Amount double 0.00001 run scoreboard players add $jump.start gm4_horse_data 44500

scoreboard players operation @s gm4_horse_jump_step -= $jump.start gm4_horse_data
scoreboard players operation @s gm4_horse_jump_step /= #15 gm4_horse_data

# | Scores
scoreboard players set @s gm4_horse_need.stamina 75
scoreboard players set @s gm4_horse_need.stamina_cap 75
scoreboard players set @s gm4_horse_level 0
scoreboard players set @s gm4_horse_experience 12
scoreboard players operation @s gm4_horse_need.social = $need_cap.social gm4_horse_data
scoreboard players operation @s gm4_horse_need.graze = $need_cap.graze gm4_horse_data
scoreboard players operation @s gm4_horse_need.care = $need_cap.care gm4_horse_data

# modify attributes from storage
attribute @s generic.movement_speed modifier remove 3a1ea8aa-6798-46e0-bd66-76def508f9f3
attribute @s horse.jump_strength modifier remove 4c7ad001-d21b-4f95-8cc8-d5ca8ae37796
attribute @s generic.max_health modifier remove bdfdceca-918f-4766-b3ce-be87c6897fe5
attribute @s generic.movement_speed modifier remove 6a9deea3-9bee-4c68-8be8-3b968e5b6028
attribute @s horse.jump_strength modifier remove 169c7466-d7a7-41de-80bb-4ef364a2642b

data modify entity @s Attributes set from storage gm4_horse:temp Attributes
data remove storage gm4_horse:temp Attributes
