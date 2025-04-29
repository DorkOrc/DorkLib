data modify storage do:io output set value {Name:"minecraft:fire_coral",Properties:{"waterlogged": "true"}}
execute if block ~ ~ ~ fire_coral[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
