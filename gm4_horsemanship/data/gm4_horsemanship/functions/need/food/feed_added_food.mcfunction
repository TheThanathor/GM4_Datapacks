# check feeding the gm4_horse a food item added by this module
# @s = player feeding the gm4_horse
# at @s
# run from start_riding_horse

# check which item was fed
item replace block 29999998 1 7134 container.0 from entity @s weapon.mainhand
data modify storage gm4_horsemanship:temp item_id set from block 29999998 1 7134 Items[{Slot:0b}].id
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:short_grass"} run scoreboard players set $fed_item gm4_horse_data 1
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:carrot"} run scoreboard players set $fed_item gm4_horse_data 2
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:sweet_berries"} run scoreboard players set $fed_item gm4_horse_data 3
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:glow_berries"} run scoreboard players set $fed_item gm4_horse_data 4
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:chorus_fruit"} run scoreboard players set $fed_item gm4_horse_data 5
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:dried_kelp"} run scoreboard players set $fed_item gm4_horse_data 6
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:melon_slice"} run scoreboard players set $fed_item gm4_horse_data 7
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:beetroot"} run scoreboard players set $fed_item gm4_horse_data 8
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:bread"} run scoreboard players set $fed_item gm4_horse_data 9
execute if data storage gm4_horsemanship:temp {item_id:"minecraft:baked_potato"} run scoreboard players set $fed_item gm4_horse_data 10
data remove storage gm4_horsemanship:temp item_id

# apply feed effect
execute on vehicle at @s run function gm4_horsemanship:need/food/apply

# playsound and remove the fed item
execute on vehicle at @s run playsound entity.horse.eat neutral @a ~ ~ ~ 1 1 
item modify entity @s[gamemode=!creative] weapon.mainhand gm4_horsemanship:remove_1

# restore player location
function gm4_horsemanship:riding/restore_location/prep
