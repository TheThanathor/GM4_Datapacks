schedule function gm4_furniture:main 8t

# check horses, remove paintbrushes that have been equipped
execute as @e[type=horse,nbt={ArmorItems:[{tag:{gm4_furniture:"paintbrush"}}]}] at @s run function gm4_furniture:technical/paintbrush/remove_from_horse

# check furniture placements
execute as @e[type=interaction,tag=gm4_furniture.on_wall] at @s if block ^ ^0.5 ^-1 #gm4:replaceable run function gm4_furniture:break/lost_connection
execute as @e[type=interaction,tag=gm4_furniture.on_ceiling] at @s if block ^ ^1.5 ^ #gm4:replaceable run function gm4_furniture:break/lost_connection