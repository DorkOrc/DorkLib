data modify storage do:io output set value {Name:"minecraft:structure_block",Properties:{"mode": "load"}}
execute if block ~ ~ ~ structure_block[mode=save] run data modify storage do:io output.Properties.mode set value "save"
execute if block ~ ~ ~ structure_block[mode=corner] run data modify storage do:io output.Properties.mode set value "corner"
execute if block ~ ~ ~ structure_block[mode=data] run data modify storage do:io output.Properties.mode set value "data"
