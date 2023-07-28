# check feeding the gm4_horse a food item added by this module
# @s = player feeding the horse
# at @s
# run from start_riding_horse

execute on vehicle at @s run playsound entity.horse.eat neutral @a ~ ~ ~ 1 1 
item modify entity @s[gamemode=!creative] weapon.mainhand gm4_horsemanship:remove_1

# restore player location
function gm4_horsemanship:riding/restore_location/prep

say fed added food
