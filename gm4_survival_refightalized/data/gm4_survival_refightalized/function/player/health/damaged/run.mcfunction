# stop regen when player gets damaged by something other than a fall
# @s = damaged player
# at @s
# run from tick

# calculate damage if player has armor
execute if score @s gm4_sr_damage_resisted matches 1.. run function gm4_survival_refightalized:player/health/damaged/calculate_reduction
scoreboard players set @s gm4_sr_armor_reduction_timer 5
scoreboard players reset @s gm4_sr_damage_resisted

# reset combat regeneration timer if combat damage was taken
execute if entity @s[advancements={gm4_survival_refightalized:damaged={combat_damage=true}}] run scoreboard players set @s gm4_sr_combat_regen_timer 75

# out-of-combat damage regenerates rapidly (every 1.6 seconds)
scoreboard players operation @s gm4_sr_damage_taken += @s gm4_sr_damage_absorbed
scoreboard players operation @s gm4_sr_damage_taken /= #10 gm4_sr_data
scoreboard players operation @s gm4_sr_damage_taken += $damage_health gm4_sr_data
execute if entity @s[advancements={gm4_survival_refightalized:damaged={combat_damage=false}}] run scoreboard players operation @s gm4_sr_fast_regen_health += @s gm4_sr_damage_taken
scoreboard players reset @s gm4_sr_damage_taken
scoreboard players reset @s gm4_sr_damage_absorbed
scoreboard players set @s gm4_sr_fast_regen_timer 3

# revoke advancement
advancement revoke @s only gm4_survival_refightalized:damaged