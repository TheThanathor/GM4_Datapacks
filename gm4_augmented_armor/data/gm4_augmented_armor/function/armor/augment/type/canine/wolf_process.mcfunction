# check if wolf has matching armor equipped by player
# @s = wolf from canine armor
# at unspecified
# run from main

# despawn wolf if it was not matched to armor this check
execute if score @s gm4_aa_augment.canine.timer matches 0 at @s run return run function gm4_augmented_armor:armor/augment/type/canine/wolf_kill
scoreboard players set @s gm4_aa_augment.canine.timer 0

# process health
execute store result score $health gm4_aa_data run data get entity @s Health
execute if score $health gm4_aa_data matches ..960 at @s run function gm4_augmented_armor:armor/augment/type/canine/wolf_died