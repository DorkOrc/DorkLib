data modify storage do:io output set value {Name:"minecraft:exposed_copper_chain",Properties:{axis:"y",waterlogged:"false"}}
execute if block ~ ~ ~ exposed_copper_chain[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ exposed_copper_chain[axis=z] run data modify storage do:io output.Properties.axis set value "z"
execute if block ~ ~ ~ exposed_copper_chain[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
