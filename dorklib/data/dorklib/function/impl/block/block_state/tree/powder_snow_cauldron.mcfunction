data modify storage do:io output set value {Name:"minecraft:powder_snow_cauldron",Properties:{"level": "1"}}
execute if block ~ ~ ~ powder_snow_cauldron[level=2] run data modify storage do:io output.Properties.level set value "2"
execute if block ~ ~ ~ powder_snow_cauldron[level=3] run data modify storage do:io output.Properties.level set value "3"
