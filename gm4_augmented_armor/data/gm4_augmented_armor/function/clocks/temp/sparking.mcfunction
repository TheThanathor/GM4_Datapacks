# use this tick clock only when needed
# @s = unspecified
# at unspecified
# schedule from armor/augment/type/spark/activate
# schedule from here

scoreboard players set $keep_tick.sparking gm4_aa_keep_tick 0
execute as @e[scores={gm4_aa_augment.sparking.static_stacks=1..}] at @s run function gm4_augmented_armor:armor/augment/type/sparking/tick
execute if score $keep_tick.sparking gm4_aa_keep_tick matches 1 run schedule function gm4_augmented_armor:clocks/temp/sparking 1t