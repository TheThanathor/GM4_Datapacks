# Summon pufferfish
# @s = player using the crossbow
# at @s
# run from projectile/bucket

# replace arrow with pufferfish and copy data
summon minecraft:pufferfish ~ ~ ~ {FromBucket:1b,Tags:["gm4_cb_projectile"],active_effects:[{id:'minecraft:instant_damage',amplifier:10,duration:1}],Silent:1b,DeathLootTable:"gm4:empty"}

execute as @e[type=minecraft:pufferfish,tag=gm4_cb_projectile,limit=1,distance=..1] run function gm4_crossbow_cartridges:projectile/arrow_motion

# fish flop sound
playsound minecraft:entity.puffer_fish.flop player @a[distance=..15] ^ ^ ^1 2 .5
