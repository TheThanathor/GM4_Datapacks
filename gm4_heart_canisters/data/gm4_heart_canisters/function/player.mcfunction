# check how many heart canisters the player has
scoreboard players operation $heart_can_last gm4_heart_can = @s gm4_heart_can
scoreboard players set @s gm4_heart_can 0
execute if predicate gm4_heart_canisters:carries_heart_canister run function gm4_heart_canisters:check_heart_canisters

execute unless score @s gm4_heart_can = $heart_can_last gm4_heart_can run function gm4_heart_canisters:apply_health_boost
