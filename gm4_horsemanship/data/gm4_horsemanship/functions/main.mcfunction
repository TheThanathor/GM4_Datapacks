schedule function gm4_horsemanship:main 16t

#execute as @e[tag=gm4_horse.riding]

execute as @e[type=#gm4_horsemanship:horse,tag=!gm4_horse.grazing,nbt={EatingHaystack:1b}] run function gm4_horsemanship:need/graze/start
