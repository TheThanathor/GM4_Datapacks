# add absorption to player that got hit (red health hits only)
# @s = player wearing armor
# at @s
# run from armor/augment/damage_taken

# get level x5 for reduction
execute store result score $level gm4_aa_data run data get storage gm4_augmented_armor:temp components."minecraft:custom_data".gm4_augmented_armor.levels[0] 5

# reduce damage down to a min of 1 (x10)
scoreboard players operation $damage_total gm4_sr_data -= $level gm4_aa_data
scoreboard players operation $damage_total gm4_sr_data > #10 gm4_aa_data

# dev damage log
tellraw @s[tag=gm4_sr_dev] [{"text":"Plated Augment: ","color":"gray"},{"text":"-","color":"white"},{"score":{"name":"$level","objective":"gm4_aa_data"},"color":"white"},{"text":" = "},{"score":{"name":"$damage_total","objective":"gm4_sr_data"},"color":"white"}]