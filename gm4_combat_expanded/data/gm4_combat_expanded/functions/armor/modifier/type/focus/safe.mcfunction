# activate the positive modifiers on the armor piece
# @s = player wearing the armor
# at unspecified
# run from functions in armor/modifier/type/focus/check

# mark for change and set to active
scoreboard players set $change gm4_ce_data 1
data modify storage gm4_combat_expanded:temp tag.gm4_combat_expanded.active set value 1

# get total level and modify attribute
execute store result score $total_level gm4_ce_data run data get storage gm4_combat_expanded:temp tag.gm4_combat_expanded.level 10
execute store result score $add_level gm4_ce_data run data get storage gm4_combat_expanded:temp tag.gm4_combat_expanded.level2 10
execute store result storage gm4_combat_expanded:temp tag.AttributeModifiers[{Name:gm4_combat_expanded}].Amount float 0.1 run scoreboard players operation $total_level gm4_ce_data += $add_level gm4_ce_data