# calculate square root: from https://gist.github.com/misode/47e15abaa234943d942e64d57749c85a

scoreboard players operation temp gm4_lt_value = input gm4_lt_value
scoreboard players operation temp gm4_lt_value /= gm4_lt_report_calc gm4_lt_value
scoreboard players operation temp gm4_lt_value += gm4_lt_report_calc gm4_lt_value
scoreboard players operation temp gm4_lt_value /= 2 const
scoreboard players operation gm4_lt_report_calc gm4_lt_value = temp gm4_lt_value

scoreboard players add counter gm4_lt_value 1
execute if score counter gm4_lt_value matches ..16 run function gm4_standard_liquids:level_report/experience/calc_square_root
