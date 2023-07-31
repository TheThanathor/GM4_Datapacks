# apply feeding effect
# @s = gm4_horse that was fed
# at @s
# run from need/food/feed_added_food
# run from need/food/found_horse

effect give @s glowing 1 0 true

execute if score $fed_item gm4_horse_data matches 1 run say grass
execute if score $fed_item gm4_horse_data matches 2 run say carrot
execute if score $fed_item gm4_horse_data matches 3 run say sweet_berries
execute if score $fed_item gm4_horse_data matches 4 run say glow_berries
execute if score $fed_item gm4_horse_data matches 5 run say chorus_fruit
execute if score $fed_item gm4_horse_data matches 6 run say dried_kelp
execute if score $fed_item gm4_horse_data matches 7 run say melon_slice
execute if score $fed_item gm4_horse_data matches 8 run say beetroot
execute if score $fed_item gm4_horse_data matches 9 run say bread
execute if score $fed_item gm4_horse_data matches 10 run say baked_potato
execute if score $fed_item gm4_horse_data matches 11 run say apple
execute if score $fed_item gm4_horse_data matches 12 run say golden_apple
execute if score $fed_item gm4_horse_data matches 13 run say enchanted_golden_apple
execute if score $fed_item gm4_horse_data matches 14 run say golden_carrot
execute if score $fed_item gm4_horse_data matches 15 run say sugar
execute if score $fed_item gm4_horse_data matches 16 run say wheat
execute if score $fed_item gm4_horse_data matches 17 run say hay_block
