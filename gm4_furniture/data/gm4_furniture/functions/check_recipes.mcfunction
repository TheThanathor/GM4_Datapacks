# @s = custom crafter running recipes
# run from #gm4_custom_crafters:check_recipes

execute if score $crafted gm4_crafting matches 0 store success score $crafted gm4_crafting if score $slot_count gm4_crafting matches 5 if data storage gm4_custom_crafters:temp/crafter {Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:7b,id:"minecraft:stick"}]} run loot replace block ~ ~ ~ container.0 loot gm4_furniture:crafting/paintbrush
execute if score $crafted gm4_crafting matches 0 store success score $crafted gm4_crafting if score $slot_count gm4_crafting matches 8 if data storage gm4_custom_crafters:temp/crafter {Items:[{Slot:0b,item_tags:{minecraft:{planks:1b}}},{Slot:1b,id:"minecraft:crafting_table"},{Slot:2b,item_tags:{minecraft:{planks:1b}}},{Slot:3b,item_tags:{minecraft:{planks:1b}}},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:5b,item_tags:{minecraft:{planks:1b}}},{Slot:6b,item_tags:{minecraft:{planks:1b}}},{Slot:8b,item_tags:{minecraft:{planks:1b}}}]} run loot replace block ~ ~ ~ container.0 loot gm4_furniture:crafting/furniture_station