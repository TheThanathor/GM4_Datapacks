advancement revoke @s only gm4_horsemanship:brush_horse

say brush
execute as @e[type=horse,limit=1,sort=nearest] at @s run tp @s ~ ~1000 ~
execute positioned ~ ~1000 ~ as @e[type=horse,limit=1,sort=nearest] at @s run tp @s ~ ~-1000 ~
