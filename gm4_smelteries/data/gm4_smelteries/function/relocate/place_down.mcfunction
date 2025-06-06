# @s = command block placed by "gm4_relocators:backwards_compatibility/place_down/replace_head"
# located at the command block (where the player head was)

execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ hopper[facing=east]
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ hopper[facing=west]
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ hopper[facing=south]
execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ hopper[facing=north]
execute if block ~ ~ ~ command_block[facing=down] run setblock ~ ~ ~ hopper[facing=down]

data merge block ~ ~ ~ {CustomName:{"translate":"container.gm4.smeltery","fallback":"Smeltery"}}
summon armor_stand ~ ~-.4 ~ {Silent:1b,Small:1b,NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039552,Tags:["gm4_smeltery","gm4_no_edit","gm4_machine"],Rotation:[45f,0f],HasVisualFire:1b,CustomName:"gm4_smeltery",equipment:{head:{id:"minecraft:gray_stained_glass",count:1,components:{"minecraft:custom_model_data":{floats:[3420001]}}},offhand:{id:"minecraft:stone_button",count:1,components:{"minecraft:custom_model_data":{floats:[3420005]}}}},Pose:{LeftArm:[0f, 0f, 0f]}}
playsound block.anvil.use block @a[distance=..4] ~ ~ ~ 1 0.8 1
