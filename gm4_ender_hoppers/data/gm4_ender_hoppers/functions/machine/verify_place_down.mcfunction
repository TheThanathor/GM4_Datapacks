# verifies that the placed down machine was from this module
# @s = player who placed down the machine
# located at the machine block marker (at the center of the placed down block)
# run from #gm4_machines:place_down

execute if score $placed_block gm4_machine_data matches 0 if data storage gm4_machines:temp {id:"ender_hopper"} run function gm4_ender_hoppers:machine/create
