# fail a newly throw spell trident with no mana
# @s = spell trident
# at @s
# run from spell_trident/thrown

data modify entity @s Motion set value [0.0,0.0,0.0]
data modify entity @s damage set value 0.0d
data modify entity @s Trident.tag.Damage set value 242

playsound block.fire.extinguish player @a[distance=..16] ~ ~ ~ 0.8 0.8
particle smoke ~ ~ ~ 0.1 0.1 0.1 0.05 2
stopsound @a[distance=..16] player block.conduit.attack.target
stopsound @a[distance=..16] player block.conduit.activate

tag @s add gm4_hy_spell_trident.landed