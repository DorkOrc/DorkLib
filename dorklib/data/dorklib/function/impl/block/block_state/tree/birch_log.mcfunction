data modify storage do:io output set value {Name:"minecraft:birch_log",Properties:{"axis": "y"}}
execute if block ~ ~ ~ birch_log[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ birch_log[axis=z] run data modify storage do:io output.Properties.axis set value "z"
