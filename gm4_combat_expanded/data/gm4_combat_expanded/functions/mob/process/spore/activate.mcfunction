# summon new zombie/husk/drowned when spore is grown
# @s = spore item
# at @s
# run from mob/process/spore/advance

execute store result score $spore_count gm4_ce_data run data get entity @s Item.Count
execute store result score $generation gm4_ce_data run data get entity @s Item.tag.gm4_ce_spore.generation

summon zombie ~ ~ ~ {Tags:["gm4_ce_extra_mob","gm4_ce_spore_mob"]}
execute if score $spore_count gm4_ce_data matches 2.. run summon zombie ~.01 ~ ~-.03 {Tags:["gm4_ce_extra_mob","gm4_ce_spore_mob"]}
execute if score $spore_count gm4_ce_data matches 3.. run summon zombie ~.04 ~ ~.02 {Tags:["gm4_ce_extra_mob","gm4_ce_spore_mob"]}
execute if score $spore_count gm4_ce_data matches 4.. run summon zombie ~-0.3 ~ ~.04 {Tags:["gm4_ce_extra_mob","gm4_ce_spore_mob"]}
execute if entity @s[nbt={Item:{id:"minecraft:cherry_leaves"}}] run tag @e[type=zombie,tag=gm4_ce_spore_mob,distance=..1] add gm4_ce_spore_zombie.cherry

particle block flowering_azalea_leaves ~ ~1 ~ 0.35 1 0.35 0.1 32
playsound block.grass.break hostile @a ~ ~ ~ 0.6 0.6

execute if score $spore_count gm4_ce_data matches ..4 run kill @s
execute if score $spore_count gm4_ce_data matches 5.. store result entity @s Item.Count byte 1 run scoreboard players remove $spore_count gm4_ce_data 4

execute as @e[tag=gm4_ce_spore_mob,distance=..1] at @s run function gm4_combat_expanded:mob/process/spore/set_generation