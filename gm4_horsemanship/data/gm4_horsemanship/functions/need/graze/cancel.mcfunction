# cancel grazing gm4_horses if they are being ridden
# @s = gm4_horse
# at @s
# run from horse_submain

tag @s remove gm4_horse.grazing
tag @s remove gm4_horse.force_graze
data modify entity @s EatingHaystack set value 0b
