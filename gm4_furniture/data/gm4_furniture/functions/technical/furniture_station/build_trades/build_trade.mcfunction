# build a trade from trade_data
# @s = furniture station wandering trader
# at @s
# run from technical/furniture_station/build_trades/prep
# run from here

data modify storage gm4_furniture:temp new_trade set value {rewardExp:0b,maxUses:2147483647,uses:0,xp:0,buy:{id:"minecraft:barrier",Count:1b},buyB:{id:"minecraft:barrier",Count:1b},sell:{id:"minecraft:barrier",Count:1b}}
data modify storage gm4_furniture:temp new_trade.buy.id set from storage gm4_furniture:temp trade_data[0].cost[0].id
data modify storage gm4_furniture:temp new_trade.buy.Count set from storage gm4_furniture:temp trade_data[0].cost[0].Count

execute store result score $second_trade_count gm4_furniture_data run data get storage gm4_furniture:temp trade_data[0].cost[1].Count
execute unless score $second_trade_count gm4_furniture_data matches 1.. run data remove storage gm4_furniture:temp new_trade.buyB
execute if score $second_trade_count gm4_furniture_data matches 1.. run data modify storage gm4_furniture:temp new_trade.buyB.id set from storage gm4_furniture:temp trade_data[0].cost[1].id
execute if score $second_trade_count gm4_furniture_data matches 1.. run data modify storage gm4_furniture:temp new_trade.buyB.Count set from storage gm4_furniture:temp trade_data[0].cost[1].Count

function gm4_furniture:technical/furniture_station/build_trades/resolve_trade with storage gm4_furniture:temp trade_data[0].result
data modify storage gm4_furniture:temp new_trade.sell set from block 29999998 1 7134 Items[{Slot:0b}]
data modify storage gm4_furniture:temp new_trade.sell.Count set from storage gm4_furniture:temp trade_data[0].result.Count

data modify storage gm4_furniture:temp trades append from storage gm4_furniture:temp new_trade
data remove storage gm4_furniture:temp new_trade

data remove storage gm4_furniture:temp trade_data[0]
execute if data storage gm4_furniture:temp trade_data[0] run function gm4_furniture:technical/furniture_station/build_trades/build_trade