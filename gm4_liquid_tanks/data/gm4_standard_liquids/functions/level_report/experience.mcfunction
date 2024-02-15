#@s = player looking at tank positioned as tank stand
#run from standard_liquids:level_report_check

#getting value of tank being looked at
scoreboard players operation gm4_lt_report_calc gm4_lt_value = @e[type=marker,tag=gm4_liquid_tank,distance=..0.1,limit=1] gm4_lt_value

# calculate level from experience points
execute if score gm4_lt_report_calc gm4_lt_value matches ..352 run function gm4_standard_liquids:level_report/experience/low
execute if score gm4_lt_report_calc gm4_lt_value matches 353..1507 run function gm4_standard_liquids:level_report/experience/medium
execute if score gm4_lt_report_calc gm4_lt_value matches 1508.. run function gm4_standard_liquids:level_report/experience/high

title @s actionbar [{"score":{"name":"gm4_lt_report_calc","objective":"gm4_lt_value"},"color":"dark_green"},{"text":" / 100  ","color":"dark_green"},{"translate":"text.gm4.liquid_tanks.level_report.levels","fallback":"Levels","color":"dark_green"}]

scoreboard players reset gm4_lt_report_calc gm4_lt_value
tag @s add gm4_lt_found_tank
