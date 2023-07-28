schedule function gm4_horsemanship:tick 1t

execute as @a store result score @s gm4_horse_yaw run data get entity @s Rotation[0] 10000
execute as @a store result score @s gm4_horse_pitch run data get entity @s Rotation[1] 10000
