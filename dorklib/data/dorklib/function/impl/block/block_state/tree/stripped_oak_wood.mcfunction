data modify storage do:io output set value {Name:"minecraft:stripped_oak_wood",Properties:{"axis": "y"}}
execute if block ~ ~ ~ stripped_oak_wood[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ stripped_oak_wood[axis=z] run data modify storage do:io output.Properties.axis set value "z"
