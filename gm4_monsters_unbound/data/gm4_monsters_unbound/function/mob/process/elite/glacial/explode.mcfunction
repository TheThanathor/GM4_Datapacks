# explode the glacial bomb
# @s = glacial elite death marker
# at @s
# run from mob/process/elite/glacial/process_explosion

scoreboard players set $freeze_seconds gm4_mu_data 3
execute as @e[distance=..4.81,type=!#gm4:non_living,tag=!smithed.entity,tag=!smithed.strict] run function gm4_monsters_unbound:effect/freeze/apply
execute as @a[gamemode=!spectator,distance=..12] facing entity @s eyes positioned ^ ^ ^4.5 positioned ~-.05 ~-.05 ~-.05 if entity @s[dx=0,dy=0,dz=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0,dy=0,dz=0] run function gm4_monsters_unbound:effect/freeze/apply
playsound block.glass.break hostile @a[distance=..4.81] ~ ~ ~ 1 0.8

kill @s