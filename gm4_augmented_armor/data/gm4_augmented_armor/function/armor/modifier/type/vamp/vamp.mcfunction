# store healing in 'healstore' which will be healed at the end of the player processing (this tick)
# @s = player to heal
# at unspecified
# run from armor/check_modifier/killing

# store healing, 2x to make it 1 heart per kill
scoreboard players operation @s gm4_aa_healstore += @s gm4_aa_kill
scoreboard players operation @s gm4_aa_healstore += @s gm4_aa_kill