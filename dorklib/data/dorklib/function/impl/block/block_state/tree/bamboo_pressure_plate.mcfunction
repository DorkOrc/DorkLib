data modify storage do:io output set value {Name:"minecraft:bamboo_pressure_plate",Properties:{powered:"false"}}
execute if block ~ ~ ~ bamboo_pressure_plate[powered=true] run data modify storage do:io output.Properties.powered set value "true"
