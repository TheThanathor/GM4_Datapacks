
advancement revoke @s only gm4_food_bundle:use_bundle

data modify storage gm4_food_bundle:temp bundle_contents set from entity @s SelectedItem.components."minecraft:bundle_contents"
loot replace entity @s weapon.mainhand loot gm4_food_bundle:food_bundle

tag @s add gm4_fb_que_remove_thrown_food
