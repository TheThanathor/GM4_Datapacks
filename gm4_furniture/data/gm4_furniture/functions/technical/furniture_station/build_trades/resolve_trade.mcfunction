# put furniture item in forceloaded shulker box to read its data
# @s = furniture station wandering trader
# at @s
# run from technical/furniture_station/build_trades/build_trade with storage gm4_furniture:temp trade_data[0]
# $(furniture_id) = furniture's id

$loot replace block 29999998 1 7134 container.0 loot gm4_furniture:furniture/$(furniture_id)