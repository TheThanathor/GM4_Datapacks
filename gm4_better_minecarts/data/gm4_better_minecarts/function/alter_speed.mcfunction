
execute if score $total_motion gm4_better_minecarts.data matches ..900 unless score $max_speed gm4_better_minecarts.data matches 0 run function gm4_better_minecarts:get_started

scoreboard players operation $remaining_percentage gm4_better_minecarts.data = $max_speed gm4_better_minecarts.data

scoreboard players operation $divisor gm4_better_minecarts.data = $total_motion gm4_better_minecarts.data
scoreboard players operation $divisor gm4_better_minecarts.data /= #100 gm4_better_minecarts.data
scoreboard players operation $remaining_percentage gm4_better_minecarts.data /= $divisor gm4_better_minecarts.data

scoreboard players operation $remaining_percentage gm4_better_minecarts.data < #105 gm4_better_minecarts.data
scoreboard players operation $remaining_percentage gm4_better_minecarts.data > #10 gm4_better_minecarts.data

execute store result score $set_motion_x gm4_better_minecarts.data run data get entity @s Motion[0] 1000
execute store result score $set_motion_y gm4_better_minecarts.data run data get entity @s Motion[1] 1000
execute store result score $set_motion_z gm4_better_minecarts.data run data get entity @s Motion[2] 1000

execute store result entity @s Motion[0] double 0.00001 run scoreboard players operation $set_motion_x gm4_better_minecarts.data *= $remaining_percentage gm4_better_minecarts.data
execute store result entity @s Motion[1] double 0.00001 run scoreboard players operation $set_motion_y gm4_better_minecarts.data *= $remaining_percentage gm4_better_minecarts.data
execute store result entity @s Motion[2] double 0.00001 run scoreboard players operation $set_motion_z gm4_better_minecarts.data *= $remaining_percentage gm4_better_minecarts.data
