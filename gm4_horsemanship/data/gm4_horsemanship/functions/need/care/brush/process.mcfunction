# process gm4_horses being brushed
# @s = player riding the gm4_horse
# at @s (before mounting)
# run from start_riding_horse

# brushing effect
execute on vehicle unless score @s gm4_horse_brushed matches 1.. at @s run function gm4_horsemanship:need/care/brush/apply

# restore player location
function gm4_horsemanship:riding/restore_location/prep

# mark this interaction as resolved
scoreboard players set $interaction_resolved gm4_horse_data 1
