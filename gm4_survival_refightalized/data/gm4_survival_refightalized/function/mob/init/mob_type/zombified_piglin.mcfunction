# calculate modifiers for newly spawned zombified piglin
# @s = zombified piglin
# at @s
# run from mob/init/mob_type

# starting stats (easy/normal/hard)
# health: 20
# damage: 8 (armed), 5 (unarmed)

# base stat nerf
attribute @s generic.max_health modifier add gm4_survival_refightalized:stat_change.base_nerf -3 add_value
attribute @s generic.attack_damage modifier add gm4_survival_refightalized:stat_change.base_nerf -3.5 add_value
attribute @s generic.movement_speed modifier add gm4_survival_refightalized:stat_change.base_nerf -0.1 add_multiplied_base

# max stat buffs
scoreboard players set $mob_health gm4_sr_data 18
scoreboard players set $mob_damage gm4_sr_data 35
scoreboard players set $mob_speed gm4_sr_data 40
# max damage mob is allowed to deal in one hit (to deal with weapons)
scoreboard players set @s gm4_sr_damage_cap 80
tag @s add gm4_sr_check_damage_cap

# remove zombie leader bonus
execute if data entity @s attributes[{id:"minecraft:generic.max_health"}].modifiers[{id:"minecraft:leader_zombie_bonus"}] run attribute @s minecraft:generic.max_health modifier remove minecraft:leader_zombie_bonus