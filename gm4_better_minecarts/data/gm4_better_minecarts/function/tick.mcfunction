schedule function gm4_better_minecarts:tick 1t

execute as @e[type=minecart,tag=gm4_better_minecart] run function gm4_better_minecarts:process

execute as @a[gamemode=!spectator] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{type:"minecart"}}} run function gm4_better_minecarts:player_in_minecart
