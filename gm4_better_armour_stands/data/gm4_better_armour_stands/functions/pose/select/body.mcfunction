# @s = armor_stand to be modified
# at @s
# run from pose/select

scoreboard players set @s gm4_bas_mode 2

# spawn markers
execute if score @s gm4_bas_data matches 0 run summon marker ~ ~1.5 ~ {CustomName:'"gm4_bas_body"',Tags:["gm4_bas_joint","gm4_bas_body","gm4_bas_marker","gm4_bas_new"]}
execute if score @s gm4_bas_data matches 1 run summon marker ~ ~.7 ~ {CustomName:'"gm4_bas_body"',Tags:["gm4_bas_joint","gm4_bas_body","gm4_bas_marker","gm4_bas_new"]}