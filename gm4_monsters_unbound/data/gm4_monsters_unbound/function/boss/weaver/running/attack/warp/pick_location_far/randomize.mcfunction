# code taken from Orb of Ankou - expeditious
# @s = vorpal marker
# at @s
# run from armor/type/vorpal/spawn_marker
# run from armor/type/vorpal/tp_marker

execute store result score $randomX gm4_mu_boss run random value 0..8
execute store result score $randomZ gm4_mu_boss run random value 0..8

execute at @s run function gm4_monsters_unbound:boss/watchers/running/attack/warp/pick_location_far/tp_marker