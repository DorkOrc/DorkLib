data modify storage do:io output set value {Name:"minecraft:hanging_roots",Properties:{waterlogged:"false"}}
execute if block ~ ~ ~ hanging_roots[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
