
execute store result storage gm4_combat_expanded:temp sword_ring.scale float 0.1 run attribute @s generic.scale get 10
execute store result storage gm4_combat_expanded:temp sword_ring.height float 0.065 run data get storage gm4_combat_expanded:temp sword_ring.scale 10 
execute store result storage gm4_combat_expanded:temp sword_ring.offset float 0.075 run attribute @s generic.entity_interaction_range get 10

scoreboard players set $stats_set gm4_ce_data 1
scoreboard players add @s gm4_ce_sword_ring.deg 4