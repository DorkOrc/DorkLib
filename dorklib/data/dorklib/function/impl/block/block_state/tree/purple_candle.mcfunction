data modify storage do:io output set value {Name:"minecraft:purple_candle",Properties:{"candles": "1", "lit": "false", "waterlogged": "false"}}
execute if block ~ ~ ~ purple_candle[candles=2] run data modify storage do:io output.Properties.candles set value "2"
execute if block ~ ~ ~ purple_candle[candles=3] run data modify storage do:io output.Properties.candles set value "3"
execute if block ~ ~ ~ purple_candle[candles=4] run data modify storage do:io output.Properties.candles set value "4"
execute if block ~ ~ ~ purple_candle[lit=true] run data modify storage do:io output.Properties.lit set value "true"
execute if block ~ ~ ~ purple_candle[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
