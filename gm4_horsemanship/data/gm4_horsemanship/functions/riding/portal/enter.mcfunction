
tag @s add gm4_horse_portal
execute on controller run tag @s add gm4_player_portal
execute on controller run ride @s dismount
scoreboard players set @s gm4_horse_portal_delay 38

schedule function gm4_horsemanship:riding/portal/tick 1t
