# process players wearing beacon armor
# @s = player
# at @s
# run from tick

# find this players beacon
scoreboard players operation $player_id gm4_ce_id = @s gm4_ce_id
execute as @e[type=block_display,tag=gm4_ce_beacon] if score @s gm4_ce_id = $player_id gm4_ce_id run tag @s add gm4_ce_beacon.process

# if the player does not have a beacon create one
execute unless entity @e[type=block_display,tag=gm4_ce_beacon.process] run function gm4_combat_expanded:armor/modifier/type/beacon/spawn

# check if player is sneaking
execute store result score $player_sneaking gm4_ce_data if predicate gm4_combat_expanded:technical/crouching

# process the players beacon
execute as @e[type=block_display,tag=gm4_ce_beacon.process] run function gm4_combat_expanded:armor/modifier/type/beacon/process