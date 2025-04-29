data modify storage do:io output set value {Name:"minecraft:barrier",Properties:{"waterlogged": "false"}}
execute if block ~ ~ ~ barrier[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
