# calculate modifiers for newly spawned skeleton / stray
# @s = skeleton types
# at @s
# run from mob/init/mob_type

# elites
execute if predicate {condition:"minecraft:random_chance",chance:0.05} run tag @s[tag=!gm4_sr_extra_mob] add gm4_mu_elite
execute if entity @s[tag=gm4_mu_elite] run function gm4_monsters_unbound:mob/init/elite/pick

# | Biome Modifiers
# snowy
execute if entity @s[type=stray,predicate=gm4_monsters_unbound:biome/snowy,predicate=!gm4_monsters_unbound:biome/growth] run loot replace entity @s weapon.offhand loot gm4_monsters_unbound:mob/equip_arrow/stray_snowy
# mountainous
execute if predicate gm4_monsters_unbound:biome/mountainous positioned ~ ~35 ~ store result score $phantom_count gm4_mu_data if entity @e[type=phantom,distance=..32]
execute if score $spawn_phantoms gm4_sr_config matches 1 if score $phantom_count gm4_mu_data < $mob_limit.phantom gm4_sr_config if predicate gm4_monsters_unbound:chance/spawn_phantom run function gm4_monsters_unbound:mob/init/mob_type/zombie/spawn_phantoms
# flowering
execute if predicate {condition:"minecraft:all_of",terms:[{condition:"minecraft:random_chance",chance:0.85},{condition:"minecraft:reference",name:"gm4_monsters_unbound:biome/flowering"}]} run function gm4_monsters_unbound:mob/init/mob_type/skeleton/flowering
# toxic
tag @s add gm4_mu_self
execute if entity @s[type=bogged,predicate=gm4_monsters_unbound:biome/toxic] if predicate {condition:"minecraft:random_chance",chance:0.15} summon spider run function gm4_monsters_unbound:mob/init/mob_type/skeleton/toxic
tag @s remove gm4_mu_self
# growth
execute if entity @s[type=!bogged,predicate=gm4_monsters_unbound:biome/growth] run function gm4_monsters_unbound:mob/init/mob_type/skeleton/growth
# soul sand valley
execute if biome ~ ~ ~ soul_sand_valley run effect give @s fire_resistance infinite 0 true
# dripstone caves
execute if predicate {condition:"minecraft:all_of",terms:[{condition:"location_check",predicate:{biomes:"dripstone_caves"}},{condition:"random_chance",chance:0.6}]} run item replace entity @s weapon.mainhand with air

# underground
execute if predicate gm4_survival_refightalized:mob/underground if predicate {condition:"minecraft:random_chance",chance:0.4} run function gm4_monsters_unbound:mob/init/mob_type/skeleton/underground