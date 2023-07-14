
tag @s remove gm4_horse.grazing

# break grass block if mobGriefing is enabled
execute store result score $mobGriefing gm4_horse_data run gamerule mobGriefing
execute if score $mobGriefing gm4_horse_data matches 1 run fill ~ ~ ~ ~ ~-1 ~ dirt replace grass_block
execute if score $mobGriefing gm4_horse_data matches 1 run playsound minecraft:block.grass.break block @a ~ ~ ~ 1 1
particle block grass_block ~ ~ ~ 0.2 0.05 0.2 0 4

# if this is an initiated horse fill its needs
execute if entity @s[tag=gm4_horse] run say TODO: tamed horse grazed
