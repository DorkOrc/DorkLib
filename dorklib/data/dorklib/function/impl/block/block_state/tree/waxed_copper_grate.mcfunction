data modify storage do:io output set value {Name:"minecraft:waxed_copper_grate",Properties:{"waterlogged": "false"}}
execute if block ~ ~ ~ waxed_copper_grate[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
