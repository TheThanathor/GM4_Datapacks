# code taken from Orb of Ankou - expeditious
# @s = vorpal marker
# at @s
# run from armor/type/vorpal/spawn_marker
# run from armor/type/vorpal/tp_marker

execute store result score $randomZ gm4_ce_boss run random value 0..2
execute store result score $randomZ gm4_ce_boss run random value 0..2

execute at @s run function gm4_combat_expanded:boss/running/attack/slam/slam_warp/above_player/tp_marker