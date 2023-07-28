# remove tags and mark this portal travel as complete
# @s = player remounting a gm4_horse with gm4_horse_portal tag
# at @s
# run from riding/portal/check_rider

scoreboard players set $correct_rider gm4_horse_portal 1
tag @s remove gm4_horse_portal.rider
playsound block.portal.travel ambient @s ~ ~ ~ 0.25 1
execute on vehicle run tag @s remove gm4_horse_portal
