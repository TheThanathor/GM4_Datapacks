# create a beacon at players that don't have one linked to them yet
# @s = player
# at @s
# run from armor/augment/type/beacon/prep

# put player armor in storage
item replace block 29999998 1 7134 container.0 from entity @s armor.head
item replace block 29999998 1 7134 container.1 from entity @s armor.chest
item replace block 29999998 1 7134 container.2 from entity @s armor.legs
item replace block 29999998 1 7134 container.3 from entity @s armor.feet
data modify storage gm4_augmented_armor:temp Items set from block 29999998 1 7134 Items
data remove block 29999998 1 7134 Items
execute store result score $color gm4_aa_data run function gm4_augmented_armor:armor/augment/type/beacon/get_color

# this doesn't use execute summon as data merge cannot add passengers
summon block_display ~ ~2.5 ~ {teleport_duration:2,Tags:["gm4_aa_beacon","gm4_aa_beacon.process","gm4_aa_beacon.main"],Passengers:[{id:"minecraft:block_display",Tags:["gm4_aa_beacon","gm4_aa_beacon.passenger"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.21875f,-0.21875f,-0.21875f],scale:[0.4375f,0.4375f,0.4375f]},block_state:{Name:"minecraft:verdant_froglight"}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,-.25f,-.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:glass"}}
execute if score $color gm4_aa_data matches 2 as @e[type=block_display,tag=gm4_aa_beacon.process,distance=..4] on passengers run data modify entity @s block_state.Name set value "minecraft:pearlescent_froglight"
execute if score $color gm4_aa_data matches 3 as @e[type=block_display,tag=gm4_aa_beacon.process,distance=..4] on passengers run data modify entity @s block_state.Name set value "minecraft:ochre_froglight"

scoreboard players operation @e[type=block_display,tag=gm4_aa_beacon.process,distance=..4] gm4_sr_id = $player_id gm4_sr_id 