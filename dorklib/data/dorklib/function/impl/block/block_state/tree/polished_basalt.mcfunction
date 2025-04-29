data modify storage do:io output set value {Name:"minecraft:polished_basalt",Properties:{"axis": "y"}}
execute if block ~ ~ ~ polished_basalt[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ polished_basalt[axis=z] run data modify storage do:io output.Properties.axis set value "z"
