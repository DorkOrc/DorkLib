data modify storage do:io output set value {Name:"minecraft:stripped_bamboo_block",Properties:{axis:"y"}}
execute if block ~ ~ ~ stripped_bamboo_block[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ stripped_bamboo_block[axis=z] run data modify storage do:io output.Properties.axis set value "z"
