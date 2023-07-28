# check if gm4_horse has a different dimension than it's origin
# @s = player that just send a gm4_horse through a portal
# at unspecified
# run from riding/portal/find_horse

execute store success score $horse_dimension gm4_horse_data if dimension the_nether
execute unless score $horse_dimension gm4_horse_data = @s gm4_horse_portal_dimension run function gm4_horsemanship:riding/portal/attempt_remount
