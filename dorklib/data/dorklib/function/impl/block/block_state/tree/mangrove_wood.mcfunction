data modify storage do:io output set value {Name:"minecraft:mangrove_wood",Properties:{"axis": "y"}}
execute if block ~ ~ ~ mangrove_wood[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ mangrove_wood[axis=z] run data modify storage do:io output.Properties.axis set value "z"
