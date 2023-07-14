execute unless score horsemanship gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Horsemanship"}
scoreboard players set horsemanship gm4_modules 1

scoreboard objectives add gm4_horse_data dummy
scoreboard objectives add gm4_horse_level dummy
scoreboard objectives add gm4_horse_speed_step dummy
scoreboard objectives add gm4_horse_jump_step dummy
scoreboard objectives add gm4_horse_stamina dummy
scoreboard objectives add gm4_horse_experience dummy

scoreboard objectives add gm4_horse_need.social dummy
scoreboard objectives add gm4_horse_need.graze dummy
scoreboard objectives add gm4_horse_need.care dummy

scoreboard players set #4 gm4_horse_data 4
scoreboard players set #10 gm4_horse_data 10
scoreboard players set #15 gm4_horse_data 15
scoreboard players set #1000 gm4_horse_data 1000
scoreboard players set #1405 gm4_horse_data 1405
scoreboard players set #4216 gm4_horse_data 4216
scoreboard players set #100000 gm4_horse_data 100000

schedule function gm4_horsemanship:main 1t

#$moduleUpdateList
