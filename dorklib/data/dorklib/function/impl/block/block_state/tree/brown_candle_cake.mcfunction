data modify storage do:io output set value {Name:"minecraft:brown_candle_cake",Properties:{"lit": "false"}}
execute if block ~ ~ ~ brown_candle_cake[lit=true] run data modify storage do:io output.Properties.lit set value "true"
