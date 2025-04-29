data modify storage do:io output set value {Name:"minecraft:redstone_torch",Properties:{"lit": "true"}}
execute if block ~ ~ ~ redstone_torch[lit=false] run data modify storage do:io output.Properties.lit set value "false"
