# deactivate the modifiers on the armor piece
# @s = player wearing the armor
# at unspecified
# run from functions in armor/modifier/type/acrobatic/check

# mark for change and set to inactive
scoreboard players set $change gm4_aa_data 1
data modify storage gm4_augmented_armor:temp components."minecraft:custom_data".gm4_augmented_armor.active set value 0

# disable attribute
data modify storage gm4_augmented_armor:temp components."minecraft:attribute_modifiers".modifiers[{id:"gm4_augmented_armor:dynamic"}].amount set value 0