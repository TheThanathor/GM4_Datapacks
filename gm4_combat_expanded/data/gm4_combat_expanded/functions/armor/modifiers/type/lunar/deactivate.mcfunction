# remove effects from lunar armor during the day
# @s = player wearing armour
# run from armor/modifiers/type/lunar/check

# mark for change and set to inactive
scoreboard players set $change gm4_ce_data 1
data modify storage gm4_combat_expanded:temp tag.gm4_combat_expanded.active set value 0
data modify storage gm4_combat_expanded:temp tag.AttributeModifiers[{Name:gm4_combat_expanded_lunar}].Amount set value 0