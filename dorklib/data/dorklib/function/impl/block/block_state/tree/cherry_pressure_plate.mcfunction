data modify storage do:io output set value {Name:"minecraft:cherry_pressure_plate",Properties:{"powered": "false"}}
execute if block ~ ~ ~ cherry_pressure_plate[powered=true] run data modify storage do:io output.Properties.powered set value "true"
