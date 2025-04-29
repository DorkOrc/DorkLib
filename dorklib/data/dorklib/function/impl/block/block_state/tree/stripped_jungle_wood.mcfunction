data modify storage do:io output set value {Name:"minecraft:stripped_jungle_wood",Properties:{"axis": "y"}}
execute if block ~ ~ ~ stripped_jungle_wood[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ stripped_jungle_wood[axis=z] run data modify storage do:io output.Properties.axis set value "z"
