# init split entity
# @s = split entity
# at @s
# run from mob/process/elite/splitting/skeleton
# run from mob/process/elite/splitting/zombie

attribute @s attack_damage modifier add gm4_monsters_unbound:split_entity -0.5 add_multiplied_total
attribute @s gravity modifier add gm4_monsters_unbound:split_entity -0.5 add_multiplied_total
attribute @s jump_strength modifier add gm4_monsters_unbound:split_entity -0.5 add_multiplied_total
attribute @s knockback_resistance modifier add gm4_monsters_unbound:split_entity -0.5 add_multiplied_total
attribute @s max_health modifier add gm4_monsters_unbound:split_entity -0.5 add_multiplied_total
attribute @s scale modifier add gm4_monsters_unbound:split_entity -0.5 add_multiplied_total
attribute @s step_height modifier add gm4_monsters_unbound:split_entity -0.5 add_multiplied_total
attribute @s movement_speed modifier add gm4_monsters_unbound:split_entity 0.33 add_multiplied_total
attribute @s[type=#gm4_survival_refightalized:skeleton_types] follow_range modifier add gm4_monsters_unbound:split_entity -0.66 add_multiplied_total

scoreboard players set @s[type=#gm4_survival_refightalized:skeleton_types] gm4_sr_arrow.fire_delay 6
scoreboard players set @s gm4_sr_arrow.damage_change -14

data modify entity @s Motion set from storage gm4_monsters_unbound:temp set.motion

tag @s add gm4_mu_elite
tag @s add gm4_mu_split_entity
function gm4_survival_refightalized:mob/init/calc_difficulty_base

item replace entity @s armor.head with spawner
data modify entity @s ArmorDropChances[3] set value -327.670F

team join gm4_mu_elite.split