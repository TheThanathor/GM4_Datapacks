# tick watcher boss
# @s = boss shulker (secondary)
# at @s
# run from boss/watchers/tick

# update phase
scoreboard players operation @s gm4_mu_boss.phase = $phase gm4_mu_boss

# grab id
scoreboard players operation $running_id gm4_mu_boss.id = @s gm4_mu_boss.id

# process health
execute store result score $health gm4_mu_boss run data get entity @s Health
execute unless score $health gm4_mu_boss matches 960 run function gm4_monsters_unbound:boss/watchers/running/health/update_twin

# only fully process when the boss needs to act again
scoreboard players remove @s gm4_mu_boss.tick_delay 1
execute unless score @s gm4_mu_boss.tick_delay matches 1.. run function gm4_monsters_unbound:boss/watchers/running/process