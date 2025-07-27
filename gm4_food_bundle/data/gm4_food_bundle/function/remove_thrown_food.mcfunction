
say t

execute store result score $removed_item gm4_fb_data run kill @e[type=item]
execute if score $removed_item gm4_fb_data matches 1.. run tag @s remove gm4_fb_que_remove_thrown_food
