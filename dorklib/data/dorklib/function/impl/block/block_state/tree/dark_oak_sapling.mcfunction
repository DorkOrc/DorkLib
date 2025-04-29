data modify storage do:io output set value {Name:"minecraft:dark_oak_sapling",Properties:{"stage": "0"}}
execute if block ~ ~ ~ dark_oak_sapling[stage=1] run data modify storage do:io output.Properties.stage set value "1"
