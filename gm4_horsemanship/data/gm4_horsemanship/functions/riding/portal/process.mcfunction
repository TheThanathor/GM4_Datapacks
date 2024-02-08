# process gm4_horses in portals
# @s = gm4_horse
# at @s
# run from horse_processing/general

scoreboard players add @s gm4_horse_portal 1
execute if score @s gm4_horse_portal matches 1.. on controller run effect give @s nausea 4 0 true
execute if score @s gm4_horse_portal matches 1 on controller run playsound block.portal.trigger ambient @s ~ ~ ~ 0.25 1
execute if score @s gm4_horse_portal matches 6 run function gm4_horsemanship:riding/portal/enter
