data modify storage do:io output set value {Name:"minecraft:oak_pressure_plate",Properties:{"powered": "false"}}
execute if block ~ ~ ~ oak_pressure_plate[powered=true] run data modify storage do:io output.Properties.powered set value "true"
