# places the smeltery down based on rotation
# @s = player who placed the smeltery
# located at the center of the placed block
# run from gm4_smelteries:machine/create

# place furnace
setblock ~ ~ ~ furnace[facing=south]{CustomName:{"translate":"gm4.second","fallback":"%1$s","with":[{"translate":"container.gm4.smeltery","fallback":"Smeltery"},[{"text":" ","font":"gm4:half_invert"},{"translate":"container.gm4.smeltery","fallback":"Smeltery","font":"gm4:half_invert"},{"translate":"container.gm4.smeltery","fallback":"Smeltery","font":"gm4:offscreen"},{"translate":"gui.gm4.smeltery","fallback":"","font":"gm4:container_gui","color":"white"},{"text":" ","font":"gm4:half_invert"},{"translate":"container.gm4.smeltery","fallback":"Smeltery","font":"gm4:half_invert"},{"translate":"container.gm4.smeltery","fallback":"Smeltery","font":"gm4:default","color":"#404040"}]]}}

# summon cauldron display armor stand
summon armor_stand ~ ~-1.5 ~-1 {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Silent:1b,DisabledSlots:4144959,Tags:["gm4_no_edit","gm4_smeltery_cauldron","gm4_machine_display","smithed.entity","smithed.strict","gm4_new_machine"],HasVisualFire:1b,CustomName:"gm4_smeltery_cauldron",Rotation:[0.0f,0.0f]}

# summon display armor stand and marker entity
summon armor_stand ~ ~-0.3 ~ {Small:1b,NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Silent:1b,DisabledSlots:4144959,Tags:["gm4_no_edit","gm4_smeltery_stand","gm4_machine_stand","smithed.entity","smithed.strict","gm4_new_machine"],HasVisualFire:1b,CustomName:"gm4_smeltery_stand",equipment:{head:{id:"minecraft:iron_block",count:1,components:{"minecraft:custom_model_data":"block/smeltery_unlit"}}},Rotation:[0.0f,0.0f]}
summon marker ~ ~ ~ {Tags:["gm4_smeltery","gm4_machine_marker","smithed.block","smithed.entity","smithed.strict","gm4_new_machine"],CustomName:"gm4_smeltery",Rotation:[0.0f,0.0f]}
