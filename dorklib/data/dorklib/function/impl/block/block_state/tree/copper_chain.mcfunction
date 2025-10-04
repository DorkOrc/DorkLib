data modify storage do:io output set value {Name:"minecraft:copper_chain",Properties:{axis:"y",waterlogged:"false"}}
execute if block ~ ~ ~ copper_chain[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ copper_chain[axis=z] run data modify storage do:io output.Properties.axis set value "z"
execute if block ~ ~ ~ copper_chain[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
