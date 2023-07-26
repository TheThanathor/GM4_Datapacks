
tag @s remove gm4_horse.grazing
tag @s remove gm4_horse.force_graze

# break grass (block) if mobGriefing is enabled
# horses can only eat grass or grass blocks but not flowers or tall grass, similar to sheep
execute store result score $mobGriefing gm4_horse_data run gamerule mobGriefing
execute if score $mobGriefing gm4_horse_data matches 1 unless block ~ ~ ~ grass run fill ~ ~ ~ ~ ~-1 ~ dirt replace grass_block
execute if score $mobGriefing gm4_horse_data matches 1 if block ~ ~ ~ grass run fill ~ ~ ~ ~ ~ ~ air replace grass
execute if score $mobGriefing gm4_horse_data matches 1 run playsound minecraft:block.grass.break block @a ~ ~ ~ 1 1
particle block grass_block ~ ~ ~ 0.2 0.05 0.2 0 4

# if this is a baby horse accelerate its growth by 10% (same effect as on sheep)
execute store result score $Age gm4_horse_data run data get entity @s Age
execute if score $Age gm4_horse_data matches ..-1 store result entity @s Age int 0.9 run data get entity @s Age

# if this is an initiated horse fill its grazing needs
execute if entity @s[tag=gm4_horse] run scoreboard players add @s gm4_horse_need.graze 360
scoreboard players operation @s[tag=gm4_horse] gm4_horse_need.graze < $need_cap.graze gm4_horse_data
