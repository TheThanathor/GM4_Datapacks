# check feeding the gm4_horse an actual food item
# @s = player feeding the gm4_horse
# at @s
# run from advancement feed_horse

# check advancement criteria to find used food item
execute if entity @s[advancements={gm4_horsemanship:feed_horse={apple=true}}] run scoreboard players set $fed_item gm4_horse_data 11
execute if entity @s[advancements={gm4_horsemanship:feed_horse={golden_apple=true}}] run scoreboard players set $fed_item gm4_horse_data 12
execute if entity @s[advancements={gm4_horsemanship:feed_horse={enchanted_golden_apple=true}}] run scoreboard players set $fed_item gm4_horse_data 13
execute if entity @s[advancements={gm4_horsemanship:feed_horse={golden_carrot=true}}] run scoreboard players set $fed_item gm4_horse_data 14
execute if entity @s[advancements={gm4_horsemanship:feed_horse={sugar=true}}] run scoreboard players set $fed_item gm4_horse_data 15
execute if entity @s[advancements={gm4_horsemanship:feed_horse={wheat=true}}] run scoreboard players set $fed_item gm4_horse_data 16
execute if entity @s[advancements={gm4_horsemanship:feed_horse={hay_block=true}}] run scoreboard players set $fed_item gm4_horse_data 17
advancement revoke @s only gm4_horsemanship:feed_horse

# check nearby horses to find the one that was fed
tag @s add gm4_horse_check_player
execute as @e[type=#gm4_horsemanship:horse,distance=..8] run function gm4_horsemanship:need/food/check_horse
tag @s remove gm4_horse_check_player

# process the found horse
execute as @e[type=#gm4_horsemanship:horse,tag=gm4_horse_target,distance=..8,limit=1] at @s run function gm4_horsemanship:need/food/found_horse
