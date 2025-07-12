
scoreboard players set $keep_tracking gm4_better_minecarts.data 0
execute on passengers on passengers run scoreboard players set $keep_tracking gm4_better_minecarts.data 1
execute if score $keep_tracking gm4_better_minecarts.data matches 0 run return run function gm4_better_minecarts:stop_tracking

# alter max speed
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{passenger:{type_specific:{type:"minecraft:player",input:{forward:1b}}}}}} store success score @s gm4_better_minecarts.speed_change_timer run scoreboard players add @s[scores={gm4_better_minecarts.max_speed=..143}] gm4_better_minecarts.max_speed 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{passenger:{type_specific:{type:"minecraft:player",input:{backward:1b}}}}}} store success score @s gm4_better_minecarts.speed_change_timer run scoreboard players remove @s[scores={gm4_better_minecarts.max_speed=1..}] gm4_better_minecarts.max_speed 1

scoreboard players add @s[scores={gm4_better_minecarts.speed_change_timer=..-1}] gm4_better_minecarts.speed_change_timer 1
scoreboard players set @s[scores={gm4_better_minecarts.speed_change_timer=1}] gm4_better_minecarts.speed_change_timer -20

execute on passengers on passengers run xp set @s 48 levels
execute store result storage gm4_better_minecarts:temp set.xp int 1.8958333333 run scoreboard players get @s gm4_better_minecarts.max_speed
function gm4_better_minecarts:set_xp with storage gm4_better_minecarts:temp set
data remove storage gm4_better_minecarts:temp set

# grab max speed
scoreboard players operation $max_speed gm4_better_minecarts.data = @s gm4_better_minecarts.max_speed
# *100 / 20
scoreboard players operation $max_speed gm4_better_minecarts.data *= #5 gm4_better_minecarts.data
execute unless score $max_speed gm4_better_minecarts.data matches 0 run scoreboard players add $max_speed gm4_better_minecarts.data 18
scoreboard players operation $max_speed gm4_better_minecarts.data *= $max_speed gm4_better_minecarts.data

execute store result score $motion_x gm4_better_minecarts.data run data get entity @s Motion[0] 300
execute store result score $motion_y gm4_better_minecarts.data run data get entity @s Motion[1] 300
execute store result score $motion_z gm4_better_minecarts.data run data get entity @s Motion[2] 300

scoreboard players operation $motion_x gm4_better_minecarts.data *= $motion_x gm4_better_minecarts.data
scoreboard players operation $motion_y gm4_better_minecarts.data *= $motion_y gm4_better_minecarts.data
scoreboard players operation $motion_z gm4_better_minecarts.data *= $motion_z gm4_better_minecarts.data

scoreboard players operation $total_motion gm4_better_minecarts.data = $motion_x gm4_better_minecarts.data
scoreboard players operation $total_motion gm4_better_minecarts.data += $motion_y gm4_better_minecarts.data
scoreboard players operation $total_motion gm4_better_minecarts.data += $motion_z gm4_better_minecarts.data

execute unless score $total_motion gm4_better_minecarts.data = $max_speed gm4_better_minecarts.data run function gm4_better_minecarts:alter_speed
