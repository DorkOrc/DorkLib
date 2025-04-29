data modify storage do:io output set value {Name:"minecraft:deepslate",Properties:{"axis": "y"}}
execute if block ~ ~ ~ deepslate[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ deepslate[axis=z] run data modify storage do:io output.Properties.axis set value "z"
