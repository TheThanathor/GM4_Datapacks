# summons the entities for this machine
# @s = player who placed the block
# located at the center of the block to be placed
# run from gm4_disassemblers:relocate/place_down_check

scoreboard players set $placed_block gm4_rl_data 1

summon armor_stand ~ ~-0.4 ~ {Small:1b,NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Silent:1b,DisabledSlots:4144959,Tags:["gm4_no_edit","gm4_disassembler_stand","gm4_machine_stand","smithed.entity","smithed.strict","gm4_new_machine"],HasVisualFire:1b,CustomName:"gm4_disassembler_stand",equipment:{head:{id:"minecraft:tnt",count:1,components:{"minecraft:custom_model_data":"block/disassembler"}}},Rotation:[0.0f,0.0f]}
summon marker ~ ~ ~ {Tags:["gm4_disassembler","gm4_machine_marker","smithed.block","smithed.entity","smithed.strict","gm4_new_machine"],CustomName:"gm4_disassembler",Rotation:[0.0f,0.0f]}

execute as @e[tag=gm4_new_machine,distance=..2] run data modify entity @s Rotation set from storage gm4_relocators:temp gm4_relocation.entity_data.Rotation
execute as @e[tag=gm4_new_machine,distance=..2] at @s rotated as @e[type=marker,tag=gm4_new_machine,distance=..2,limit=1] run tp ~ ~ ~
execute as @e[type=armor_stand,tag=gm4_new_machine,distance=..2] run data modify entity @s equipment set from storage gm4_relocators:temp gm4_relocation.entity_data.equipment
scoreboard players set @e[distance=..2,tag=gm4_new_machine] gm4_entity_version 1
tag @e[distance=..2] remove gm4_new_machine
