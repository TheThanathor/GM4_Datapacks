# check if heal pulse is off cooldown
# @s = player wearing soothing armour
# at @s
# run from armor/check_augment/hp_check

# recharge
execute if score $active gm4_aa_data matches 1 if score @s gm4_aa_stat.kills matches 1.. run function gm4_augmented_armor:armor/augment/type/soothe/recharge

# check health if ready
execute unless score @s gm4_aa_augment.soothe.timer matches 1.. at @s if score $active gm4_aa_data matches 0 if score @s gm4_sr_stat.health_percentage matches ..50 run function gm4_augmented_armor:armor/augment/type/soothe/activate