data modify storage do:io output set value {Name:"minecraft:stripped_crimson_stem",Properties:{axis:"y"}}
execute if block ~ ~ ~ stripped_crimson_stem[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ stripped_crimson_stem[axis=z] run data modify storage do:io output.Properties.axis set value "z"
