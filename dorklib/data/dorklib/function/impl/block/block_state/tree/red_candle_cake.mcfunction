data modify storage do:io output set value {Name:"minecraft:red_candle_cake",Properties:{"lit": "false"}}
execute if block ~ ~ ~ red_candle_cake[lit=true] run data modify storage do:io output.Properties.lit set value "true"
