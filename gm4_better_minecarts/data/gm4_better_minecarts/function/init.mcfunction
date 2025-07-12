execute unless score better_minecarts gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Better Minecarts"}
execute unless score better_minecarts gm4_earliest_version < better_minecarts gm4_modules run scoreboard players operation better_minecarts gm4_earliest_version = better_minecarts gm4_modules
scoreboard players set better_minecarts gm4_modules 1

scoreboard objectives add gm4_better_minecarts.data dummy
scoreboard objectives add gm4_better_minecarts.max_speed dummy
scoreboard objectives add gm4_better_minecarts.speed_change_timer dummy

scoreboard players set #10 gm4_better_minecarts.data 10
scoreboard players set #5 gm4_better_minecarts.data 5
scoreboard players set #100 gm4_better_minecarts.data 100
scoreboard players set #105 gm4_better_minecarts.data 105

gamerule minecartMaxSpeed 48

schedule function gm4_better_minecarts:tick 1t

#$moduleUpdateList
