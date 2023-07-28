# if rider relogs while still searching for their horse cancel the search
# @s = player that relogged with the gm4_horse_portal.rider tag
# at @s
advancement revoke @s only gm4_horsemanship:portal_relog_protection

tag @s remove gm4_horse_portal.rider
scoreboard players reset @s gm4_horse_portal_relog
