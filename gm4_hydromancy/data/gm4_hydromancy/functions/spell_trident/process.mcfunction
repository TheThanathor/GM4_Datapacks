# process spell tridents
# @s = spell trident
# at @s
# run from spell_trident/clock

tag @s[tag=!gm4_hy_spell_trident.landed,nbt={inGround:1b}] add gm4_hy_spell_trident.landed

execute if entity @s[tag=gm4_hy_spell_trident.ride] run function gm4_hydromancy:spell_trident/ride/process