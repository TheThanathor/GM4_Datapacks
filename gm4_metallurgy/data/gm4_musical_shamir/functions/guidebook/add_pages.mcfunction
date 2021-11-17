# adds pages to the guidebook
# @s = player who's updating their guidebook
# located at @s
# run from gm4_musical_shamir:guidebook/verify_module

data modify storage gm4_guidebook:temp insert set value ['["",{"text":"◀ ","color":"#4AA0C7","clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Return to Table of Contents"},{"translate":"text.gm4.guidebook.return_to_table"}],"italic":true,"color":"gold"}]}},{"translate":"%1$s%3427655$s","with":[{"text":"Back"},{"translate":"text.gm4.guidebook.back"}],"color":"#4AA0C7","clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Return to Table of Contents"},{"translate":"text.gm4.guidebook.return_to_table"}],"italic":true,"color":"gold"}]}},{"text":"\\n"},{"text":"☶ ","color":"#864BC7","bold":true,"clickEvent":{"action":"open_url","value":"https://wiki.gm4.co/wiki/Metallurgy/Musical_Shamir"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Open External Wiki"},{"translate":"text.gm4.guidebook.open_wiki"}],"italic":true,"color":"gold"}]}},{"translate":"%1$s%3427655$s","with":[{"text":"Wiki"},{"translate":"text.gm4.guidebook.wiki"}],"color":"#864BC7","clickEvent":{"action":"open_url","value":"https://wiki.gm4.co/wiki/Metallurgy/Musical_Shamir"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Open External Wiki"},{"translate":"text.gm4.guidebook.open_wiki"}],"italic":true,"color":"gold"}]}},{"text":"\\n\\n"},{"text":"Musical Shamir","underlined":true},{"text":"\\n"},{"translate":"%1$s%3427655$s","with":[{"text":"Musical modifies strength and speed based on consecutive mob kills."},{"translate":"text.gm4.guidebook.musical_shamir.1"}]}]','["",{"text":"???","hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Undiscovered"},{"translate":"text.gm4.guidebook.undiscovered"}],"italic":true,"color":"red"}]}}]']

# unlockable pages
execute if entity @s[advancements={gm4_musical_shamir:guidebook/page_1=true}] run data modify storage gm4_guidebook:temp insert[1] set value '["",{"translate":"%1$s%3427655$s","with":[{"text":"The Musical Shamir is found on Barimium Bands. It can be placed onto swords.\\n\\nWhen killing mobs Slowness and Strength I are granted while playing music. With more kills, the music will become darker, and Speed and Strength III are granted."},{"translate":"text.gm4.guidebook.musical_shamir.2"}]}]'