# apply burned husk effects
# @s = husk
# at @s
# run from mob/init/mob_type/zombie/base

attribute @s generic.max_health modifier add gm4_monsters_unbound:stat_change.burned_husk -0.65 add_multiplied_base
attribute @s generic.attack_damage modifier add gm4_monsters_unbound:stat_change.burned_husk -0.25 add_multiplied_base
execute at @p[gamemode=!spectator] store result score $husk_count gm4_mu_data if entity @e[type=husk,distance=..128]
execute if entity @s[tag=!gm4_mu_extra_mob] unless score $husk_count gm4_mu_data > $mob_limit.husk_army gm4_mu_data run function gm4_monsters_unbound:mob/init/mob_type/zombie/burned_husk_army