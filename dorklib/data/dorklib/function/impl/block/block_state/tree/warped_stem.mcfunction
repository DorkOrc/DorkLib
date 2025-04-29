data modify storage do:io output set value {Name:"minecraft:warped_stem",Properties:{"axis": "y"}}
execute if block ~ ~ ~ warped_stem[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ warped_stem[axis=z] run data modify storage do:io output.Properties.axis set value "z"
