data modify storage do:io output set value {Name:"minecraft:crimson_hyphae",Properties:{"axis": "y"}}
execute if block ~ ~ ~ crimson_hyphae[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ crimson_hyphae[axis=z] run data modify storage do:io output.Properties.axis set value "z"
