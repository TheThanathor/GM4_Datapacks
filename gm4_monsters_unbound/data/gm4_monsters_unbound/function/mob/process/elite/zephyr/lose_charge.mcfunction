
attribute @s generic.movement_speed modifier remove gm4_monsters_unbound:elite_buff.speed.charging
attribute @s generic.movement_speed modifier remove gm4_monsters_unbound:elite_buff.speed.charged
attribute @s generic.attack_damage modifier remove gm4_monsters_unbound:elite_buff.speed.charged
scoreboard players reset @s gm4_mu_timer

effect give @s[tag=gm4_mu_elite.zephyr_skeleton_burst] speed 3 3
tag @s remove gm4_mu_elite.zephyr_skeleton_burst
tag @s remove gm4_mu_elite.on_hit