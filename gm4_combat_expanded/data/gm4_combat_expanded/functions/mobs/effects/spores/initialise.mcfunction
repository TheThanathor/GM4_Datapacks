# tag spore item as spore
# @s = spore item
# run from mobs/effects/spores/check

tag @s add gm4_ce_spore
data merge entity @s {Age:-32768,PickupDelay:32767,Motion:[0.0,-1.0,0.0]}