data modify storage do:io output set value {Name:"minecraft:weathered_copper_grate",Properties:{waterlogged:"false"}}
execute if block ~ ~ ~ weathered_copper_grate[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
