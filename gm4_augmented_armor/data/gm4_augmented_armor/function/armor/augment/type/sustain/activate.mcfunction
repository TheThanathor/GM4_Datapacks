# reduce natural regen timer
# @s = player wearing sustain armour below 50% health
# at unspecified
# run from armor/augment/check_augment/hp_check

scoreboard players remove @s[scores={gm4_aa_in_combat_timer=1..}] gm4_aa_in_combat_timer 2
tag @s[scores={gm4_aa_in_combat_timer=..0}] add gm4_aa_sustain_active