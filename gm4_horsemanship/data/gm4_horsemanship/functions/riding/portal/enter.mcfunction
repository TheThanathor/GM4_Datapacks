# move this horse through the nether portal
# @s = gm4_horse
# at @s
# run from horse_processsing/general

# set horse and riders score to an id
execute store result score @s gm4_horse_portal run scoreboard players remove $curr_portal_id gm4_horse_portal 1
execute on controller run scoreboard players operation @s gm4_horse_portal = $curr_portal_id gm4_horse_portal

# mark origin dimension
execute store success score @s gm4_horse_portal_dimension if dimension the_nether

# tag self/rider and dismount the rider so horse goes through portal
tag @s add gm4_horse_portal
execute on controller run tag @s add gm4_horse_portal.rider
execute on controller run scoreboard players set @s gm4_horse_portal_relog 0
execute on controller run ride @s dismount

schedule function gm4_horsemanship:riding/portal/tick 1t
