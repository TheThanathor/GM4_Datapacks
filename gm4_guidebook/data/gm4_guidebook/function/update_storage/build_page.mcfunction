# builds each page of the table of contents
# @s = none
# located at world spawn
# run from gm4_guidebook:update_storage/build_toc
# run from self

# build lines
scoreboard players set $line_count gm4_guide 2
data merge storage gm4_guidebook:temp {page:[["",{"translate":"gui.gm4.guidebook.page.toc","fallback":"","color":"white","font":"gm4:guidebook"}]],lectern_page:[]}
function gm4_guidebook:update_storage/build_line
execute if score $line_count gm4_guide matches 2 run return 1

# add table of contents page
data modify block 29999998 1 7133 front_text.messages[0] set value {"nbt":"page[]","storage":"gm4_guidebook:temp","interpret":true,"separator":{"text":"\n","color":"white"}}
data modify storage gm4_guidebook:temp page_content set from block 29999998 1 7133 front_text.messages[0]
function gm4_guidebook:update_storage/add_to_toc with storage gm4_guidebook:temp

# store (unfinished) lectern toc page
data modify storage gm4_guidebook:temp lectern_pages append from storage gm4_guidebook:temp lectern_page
scoreboard players add $front_matter gm4_guide_pages 1

# loop for all modules
execute if score $module_count gm4_guide matches 1.. run function gm4_guidebook:update_storage/build_page
