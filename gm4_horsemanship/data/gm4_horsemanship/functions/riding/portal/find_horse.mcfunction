# try to locate the gm4_horse matching to this player
# @s = player that just send a gm4_horse through a portal
# at unspecified
# run from riding/portal/tick

tag @s add gm4_target
execute as @e[type=#gm4_horsemanship:horse,tag=gm4_horse_portal] if score @s gm4_horse_portal = @p[tag=gm4_target] gm4_horse_portal at @s run function gm4_horsemanship:riding/portal/check_dimension
tag @s remove gm4_target
