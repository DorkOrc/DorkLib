data modify storage do:io output set value {Name:"minecraft:oak_log",Properties:{"axis": "y"}}
execute if block ~ ~ ~ oak_log[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ oak_log[axis=z] run data modify storage do:io output.Properties.axis set value "z"
