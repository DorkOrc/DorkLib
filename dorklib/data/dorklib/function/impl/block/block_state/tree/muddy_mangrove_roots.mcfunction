data modify storage do:io output set value {Name:"minecraft:muddy_mangrove_roots",Properties:{"axis": "y"}}
execute if block ~ ~ ~ muddy_mangrove_roots[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ muddy_mangrove_roots[axis=z] run data modify storage do:io output.Properties.axis set value "z"
