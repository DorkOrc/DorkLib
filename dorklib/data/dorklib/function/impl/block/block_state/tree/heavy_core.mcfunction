data modify storage do:io output set value {Name:"minecraft:heavy_core",Properties:{"waterlogged": "false"}}
execute if block ~ ~ ~ heavy_core[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
