
execute on passengers on passengers store result score $yaw gm4_better_minecarts.data run data get entity @s Rotation[0]

execute if score $yaw gm4_better_minecarts.data matches -135..-45 run data modify entity @s Motion[0] set value 0.11d
execute if score $yaw gm4_better_minecarts.data matches -45..45 run data modify entity @s Motion[2] set value 0.11d
execute if score $yaw gm4_better_minecarts.data matches 45..135 run data modify entity @s Motion[0] set value -0.11d
execute unless score $yaw gm4_better_minecarts.data matches -135..135 run data modify entity @s Motion[2] set value -0.11d
