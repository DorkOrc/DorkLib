data modify storage do:io output set value {Name:"minecraft:redstone_lamp",Properties:{"lit": "false"}}
execute if block ~ ~ ~ redstone_lamp[lit=true] run data modify storage do:io output.Properties.lit set value "true"
