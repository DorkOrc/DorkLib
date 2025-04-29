data modify storage do:io output set value {Name:"minecraft:dark_oak_pressure_plate",Properties:{"powered": "false"}}
execute if block ~ ~ ~ dark_oak_pressure_plate[powered=true] run data modify storage do:io output.Properties.powered set value "true"
