data modify storage do:io output set value {Name:"minecraft:brain_coral",Properties:{"waterlogged": "true"}}
execute if block ~ ~ ~ brain_coral[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
