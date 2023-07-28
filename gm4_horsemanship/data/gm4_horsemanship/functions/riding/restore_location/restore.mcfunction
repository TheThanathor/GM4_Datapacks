# restore player location to before mounting
# @s = marker
# at @s
# run from riding/restore_location/prep

execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get $yaw gm4_horse_data
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get $pitch gm4_horse_data
tp @p[tag=gm4_target] @s
kill @s
