# apply warped forest effects to skeleton
# @s = skeleton
# at @s
# run from mob/init/mob_type/skeleton

item replace entity @s weapon.mainhand with air
attribute @s generic.max_health modifier add f1f26b22-9f93-4fea-8416-96bae6867d80 "gm4_ce_modifier_warped_forest" 0.35 multiply_base
attribute @s generic.movement_speed modifier add 0f98404f-d7ab-40bf-92a3-4944640b5b0e "gm4_ce_modifier_warped_forest" -0.06 multiply_base
attribute @s generic.attack_damage modifier add f1f26b22-9f93-4fea-8416-96bae6867d80 "gm4_ce_modifier_warped_forest" 3 add