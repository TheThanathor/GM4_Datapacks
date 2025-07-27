execute unless score food_bundle gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Food Bundle"}
execute unless score food_bundle gm4_earliest_version < food_bundle gm4_modules run scoreboard players operation food_bundle gm4_earliest_version = food_bundle gm4_modules
scoreboard players set food_bundle gm4_modules 1

scoreboard objectives add gm4_fb_data dummy

schedule function gm4_food_bundle:tick 1t



#$moduleUpdateList
