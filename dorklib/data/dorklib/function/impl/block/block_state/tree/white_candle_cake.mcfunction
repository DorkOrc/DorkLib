data modify storage do:io output set value {Name:"minecraft:white_candle_cake",Properties:{"lit": "false"}}
execute if block ~ ~ ~ white_candle_cake[lit=true] run data modify storage do:io output.Properties.lit set value "true"
