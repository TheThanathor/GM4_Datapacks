# get random teleport location
# @s = marker
# at @s
# run from clocks/elite/vorpal/warp/randomize
# run from here

execute at @s if score $randomX gm4_mu_data matches 8.. run tp @s ~8 ~ ~
execute if score $randomX gm4_mu_data matches 8.. run scoreboard players remove $randomX gm4_mu_data 8
execute at @s if score $randomX gm4_mu_data matches 4.. run tp @s ~4 ~ ~
execute if score $randomX gm4_mu_data matches 4.. run scoreboard players remove $randomX gm4_mu_data 4
execute at @s if score $randomX gm4_mu_data matches 2.. run tp @s ~2 ~ ~
execute if score $randomX gm4_mu_data matches 2.. run scoreboard players remove $randomX gm4_mu_data 2
execute at @s if score $randomX gm4_mu_data matches 1.. run tp @s ~1 ~ ~
execute if score $randomX gm4_mu_data matches 1.. run scoreboard players remove $randomX gm4_mu_data 1

execute at @s if score $randomZ gm4_mu_data matches 8.. run tp @s ~ ~ ~8
execute if score $randomZ gm4_mu_data matches 8.. run scoreboard players remove $randomZ gm4_mu_data 8
execute at @s if score $randomZ gm4_mu_data matches 4.. run tp @s ~ ~ ~4
execute if score $randomZ gm4_mu_data matches 4.. run scoreboard players remove $randomZ gm4_mu_data 4
execute at @s if score $randomZ gm4_mu_data matches 2.. run tp @s ~ ~ ~2
execute if score $randomZ gm4_mu_data matches 2.. run scoreboard players remove $randomZ gm4_mu_data 2
execute at @s if score $randomZ gm4_mu_data matches 1.. run tp @s ~ ~ ~1
execute if score $randomZ gm4_mu_data matches 1.. run scoreboard players remove $randomZ gm4_mu_data 1

execute store result entity @s Pos[1] double 1 run scoreboard players get $y_pos gm4_mu_data
execute at @s run tp @s ~ ~4 ~
scoreboard players set $set_y gm4_mu_data 0
execute at @s run function gm4_monsters_unbound:mob/process/elite/vorpal/warp/set_ypos

scoreboard players add $warp_attempt gm4_mu_data 1
execute unless score $warp_attempt gm4_mu_data matches 33.. run function gm4_monsters_unbound:mob/process/elite/vorpal/warp/randomize