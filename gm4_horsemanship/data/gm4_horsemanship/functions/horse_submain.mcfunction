
# | Riding Status
scoreboard players set $mounted gm4_horse_data 0
scoreboard players set $riding gm4_horse_data 0
execute store success score $mounted gm4_horse_data on controller if entity @s[type=player]
execute if score $mounted gm4_horse_data matches 1 on controller if score @s gm4_horse_riding matches 1.. run scoreboard players set $riding gm4_horse_data 1

execute store result score $jumping gm4_horse_data run data get entity @s Motion[1]
execute if score $jumping gm4_horse_data matches 1.. run say jumped!

# | Need: Grazing
execute if score $riding gm4_horse_data matches 1 run scoreboard players remove @s[scores={gm4_horse_need.graze=2..}] gm4_horse_need.graze 2
scoreboard players remove @s[scores={gm4_horse_need.graze=1..}] gm4_horse_need.graze 1
# grazing adds 1350 to score
execute if score @s[tag=!gm4_horse.force_graze] gm4_horse_need.graze matches ..300 if score $riding gm4_horse_data matches 0 if block ~ ~-1 ~ grass_block if block ~ ~ ~ #gm4_horsemanship:can_eat_through run function gm4_horsemanship:need/graze/force
execute if score $riding gm4_horse_data matches 1 if entity @s[nbt={EatingHaystack:1b}] run function gm4_horsemanship:need/graze/cancel
execute if score @s gm4_horse_need.graze matches ..0 run function gm4_horsemanship:riding/stamina/tired 

# | Need: Social

# | Need: Care

# | Need: Stamina
execute if score $mounted gm4_horse_data matches 0 run scoreboard players add @s gm4_horse_need.stamina 3
execute if score $mounted gm4_horse_data matches 0 run scoreboard players operation @s gm4_horse_need.stamina += @s gm4_horse_level
execute if score $mounted gm4_horse_data matches 1 if score $riding gm4_horse_data matches 0 run scoreboard players add @s gm4_horse_need.stamina 1
scoreboard players operation @s gm4_horse_need.stamina < @s gm4_horse_need.stamina_cap
execute if score $riding gm4_horse_data matches 1 run scoreboard players remove @s[scores={gm4_horse_need.stamina=1..}] gm4_horse_need.stamina 1
execute if score @s[tag=!gm4_horse.tired] gm4_horse_need.stamina matches 0 run function gm4_horsemanship:riding/stamina/tired
execute if entity @s[tag=gm4_horse.tired] run particle ambient_entity_effect ~ ~1 ~ 0.5 0.5 0.5 0 12

# | Training
execute if score $riding gm4_horse_data matches 1 run scoreboard players remove @s[tag=!gm4_horse.tired,scores={gm4_horse_level=..14}] gm4_horse_experience 1
execute if score @s[scores={gm4_horse_level=..14}] gm4_horse_experience matches ..0 run function gm4_horsemanship:level/level_up

# recover tired status if all needs are above min again
execute if score @s[tag=gm4_horse.tired] gm4_horse_need.graze matches 350.. if score @s gm4_horse_need.stamina matches 30.. run function gm4_horsemanship:riding/stamina/rested

# portal
execute unless score @s gm4_horse_portal_delay matches 1.. if block ~ ~ ~ nether_portal run scoreboard players remove @s gm4_horse_portal_delay 1
execute if score @s gm4_horse_portal_delay matches ..-1 unless block ~ ~ ~ nether_portal run scoreboard players reset @s gm4_horse_portal_delay
execute if score @s gm4_horse_portal_delay matches -1 on controller run playsound block.portal.trigger ambient @s ~ ~ ~ 0.25 1
execute if score @s gm4_horse_portal_delay matches ..-6 run function gm4_horsemanship:riding/portal/enter
scoreboard players remove @s[scores={gm4_horse_portal_delay=1..}] gm4_horse_portal_delay 1
