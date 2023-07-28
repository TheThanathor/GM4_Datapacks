# try to mount player to their matching gm4_horse
# @s = gm4_horse that matched to player with gm4_target tag
# at @s
# run from riding/portal/check_dimension

# tp first to swap dimensions, otherwise ride command doesn't work
tp @p[tag=gm4_target] @s
ride @p[tag=gm4_target] mount @s
