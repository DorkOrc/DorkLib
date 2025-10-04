data modify storage do:io output set value {Name:"minecraft:pale_oak_sapling",Properties:{stage:"0"}}
execute if block ~ ~ ~ pale_oak_sapling[stage=1] run data modify storage do:io output.Properties.stage set value "1"
