data modify storage do:io output set value {Name:"minecraft:chain",Properties:{"axis": "y", "waterlogged": "false"}}
execute if block ~ ~ ~ chain[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ chain[axis=z] run data modify storage do:io output.Properties.axis set value "z"
execute if block ~ ~ ~ chain[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
