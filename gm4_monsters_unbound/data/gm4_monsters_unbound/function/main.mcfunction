schedule function gm4_monsters_unbound:main 16t

# process cloaked creepers
execute as @e[type=creeper,tag=gm4_mu_cloaked_creeper] at @s if entity @a[gamemode=!spectator,gamemode=!creative,distance=..3.1] run function gm4_monsters_unbound:mob/process/cloaked_creeper

# zombie spores
execute as @e[type=item,tag=gm4_mu_spore] at @s run function gm4_monsters_unbound:mob/process/spore/advance
item replace entity @e[type=#gm4_survival_refightalized:zombie_types,tag=gm4_mu_spore_zombie,predicate=gm4_monsters_unbound:technical/on_fire] armor.head with air

# traps
execute as @e[type=marker,tag=gm4_mu_snowy_trap] at @s if entity @a[gamemode=!spectator,distance=..8] run function gm4_monsters_unbound:mob/process/reveal_snowy_trap
execute as @e[type=marker,tag=gm4_mu_dripstone_trap] at @s positioned ~-3.5 ~-34 ~-3.5 if entity @a[gamemode=!spectator,dx=6,dy=28,dz=6] at @s run function gm4_monsters_unbound:mob/process/reveal_dripstone_trap

# elites
execute as @e[type=#gm4_monsters_unbound:elite_types,tag=gm4_mu_elite.process] at @s run function gm4_monsters_unbound:mob/process/elite/check_type