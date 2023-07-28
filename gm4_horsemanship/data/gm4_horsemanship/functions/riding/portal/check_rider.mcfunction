# check to make sure the right player remounted the horse
# @s = player remounting a gm4_horse with gm4_horse_portal tag
# at unspecified
# run from riding/portal/tick

tag @s add gm4_target
scoreboard players set $correct_rider gm4_horse_portal 0
execute on vehicle if score @s gm4_horse_portal = @p[tag=gm4_target] gm4_horse_portal on controller at @s run function gm4_horsemanship:riding/portal/rider_found
execute if score $correct_rider gm4_horse_portal matches 0 run ride @s dismount
tag @s remove gm4_target
