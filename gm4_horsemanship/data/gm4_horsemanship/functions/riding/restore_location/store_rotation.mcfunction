# store player rotation using a marker
# @s = marker
# at @s
# run from tick

tp @s @p
execute store result score @p gm4_horse_yaw run data get entity @s Rotation[0] 10000
execute store result score @p gm4_horse_pitch run data get entity @s Rotation[1] 10000
kill @s
