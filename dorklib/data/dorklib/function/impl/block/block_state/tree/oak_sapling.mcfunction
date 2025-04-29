data modify storage do:io output set value {Name:"minecraft:oak_sapling",Properties:{"stage": "0"}}
execute if block ~ ~ ~ oak_sapling[stage=1] run data modify storage do:io output.Properties.stage set value "1"
