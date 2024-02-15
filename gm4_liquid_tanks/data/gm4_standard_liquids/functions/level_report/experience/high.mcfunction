
scoreboard players remove gm4_lt_report_calc gm4_lt_value 753
scoreboard players operation gm4_lt_report_calc gm4_lt_value *= #10 gm4_lt_value
scoreboard players operation gm4_lt_report_calc gm4_lt_value /= #45 gm4_lt_value

scoreboard players set $counter gm4_lt_value 0
scoreboard players operation input gm4_lt_value = gm4_lt_report_calc gm4_lt_value
scoreboard players operation gm4_lt_report_calc gm4_lt_value /= #2 gm4_lt_value
function gm4_standard_liquids:level_report/experience/calc_square_root

scoreboard players add gm4_lt_report_calc gm4_lt_value 18
