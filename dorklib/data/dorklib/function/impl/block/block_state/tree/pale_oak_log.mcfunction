data modify storage do:io output set value {Name:"minecraft:pale_oak_log",Properties:{"axis": "y"}}
execute if block ~ ~ ~ pale_oak_log[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ pale_oak_log[axis=z] run data modify storage do:io output.Properties.axis set value "z"
