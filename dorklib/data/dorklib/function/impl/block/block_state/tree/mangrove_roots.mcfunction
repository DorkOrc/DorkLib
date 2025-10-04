data modify storage do:io output set value {Name:"minecraft:mangrove_roots",Properties:{waterlogged:"false"}}
execute if block ~ ~ ~ mangrove_roots[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
