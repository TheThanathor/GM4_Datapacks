
scoreboard players add @s gm4_ce_boss.attack_progress 1

execute if score @s gm4_ce_boss.attack_progress matches 1 run function gm4_combat_expanded:boss/running/attack/shield/start

scoreboard players set @s gm4_ce_boss.tick_delay 20
execute if entity @p[gamemode=!spectator,gamemode=!creative,distance=..48] run function gm4_combat_expanded:boss/running/attack/shield/end