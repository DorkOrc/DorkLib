data modify storage do:io output set value {Name:"minecraft:birch_sapling",Properties:{"stage": "0"}}
execute if block ~ ~ ~ birch_sapling[stage=1] run data modify storage do:io output.Properties.stage set value "1"
