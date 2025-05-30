# @s = armor_stand to be modified
# at @s
# run from pose/select

scoreboard players set @s gm4_bas_mode 2

# spawn markers
execute if score $size gm4_bas_data matches 0 run summon marker ~ ~1.5 ~ {CustomName:"gm4_bas_body",Tags:["smithed.entity","smithed.strict","gm4_bas_joint","gm4_bas_body","gm4_bas_marker","gm4_bas_new","gm4_bas_temp"]}
execute if score $size gm4_bas_data matches 1 run summon marker ~ ~.7 ~ {CustomName:"gm4_bas_body",Tags:["smithed.entity","smithed.strict","gm4_bas_joint","gm4_bas_body","gm4_bas_marker","gm4_bas_new","gm4_bas_temp"]}

# store current data
data modify storage gm4_better_armour_stands:temp Data.Pose.Body set from entity @s Pose.Body
