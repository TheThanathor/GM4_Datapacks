# once a gm4_horse that went through a portal loses its PortalCooldown assume the rider has been found and allow horse to pass through portals again
# @s = gm4_horse
# at @s
# run from horse_submain

scoreboard players reset @s gm4_horse_portal
tag @s remove gm4_horse_portal
