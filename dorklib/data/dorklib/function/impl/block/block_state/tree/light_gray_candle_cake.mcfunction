data modify storage do:io output set value {Name:"minecraft:light_gray_candle_cake",Properties:{"lit": "false"}}
execute if block ~ ~ ~ light_gray_candle_cake[lit=true] run data modify storage do:io output.Properties.lit set value "true"
