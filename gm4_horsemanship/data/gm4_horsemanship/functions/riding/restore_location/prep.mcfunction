# prep restoring the location of this player
# @s = player that just mounted a gm4_horse
# at @s (before mounting)
# run from need/care/brush/process
# run from need/food/feed_added_food

# location can be taken from player, but rotation needs to be set from a stored rotation
scoreboard players operation $yaw gm4_horse_data = @s gm4_horse_yaw
scoreboard players operation $pitch gm4_horse_data = @s gm4_horse_pitch

tag @s add gm4_target
execute summon marker run function gm4_horsemanship:riding/restore_location/restore
tag @s remove gm4_target
