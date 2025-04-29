data modify storage do:io output set value {Name:"minecraft:bone_block",Properties:{"axis": "y"}}
execute if block ~ ~ ~ bone_block[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ bone_block[axis=z] run data modify storage do:io output.Properties.axis set value "z"
