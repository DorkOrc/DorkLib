data modify storage do:io output set value {Name:"minecraft:stripped_warped_hyphae",Properties:{axis:"y"}}
execute if block ~ ~ ~ stripped_warped_hyphae[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ stripped_warped_hyphae[axis=z] run data modify storage do:io output.Properties.axis set value "z"
