data modify storage do:io output set value {Name:"minecraft:cherry_sapling",Properties:{stage:"0"}}
execute if block ~ ~ ~ cherry_sapling[stage=1] run data modify storage do:io output.Properties.stage set value "1"
