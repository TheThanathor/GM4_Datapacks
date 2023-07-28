# process gm4_horses moving through nether portals
# @s = unspecified
# at unspecified
# schedule from riding/portal/enter
# schedule from here

# check if there is a rider again
execute as @e[type=#gm4_horsemanship:horse,tag=gm4_horse_portal] on controller run function gm4_horsemanship:riding/portal/check_rider

# attempt to remount the player
execute as @a[tag=gm4_horse_portal.rider] run function gm4_horsemanship:riding/portal/find_horse

# if there is still a player trying to remount keep clock going
execute if entity @a[tag=gm4_horse_portal.rider] run schedule function gm4_horsemanship:riding/portal/tick 1t
