data modify storage do:io output set value {Name:"minecraft:bubble_coral",Properties:{"waterlogged": "true"}}
execute if block ~ ~ ~ bubble_coral[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
