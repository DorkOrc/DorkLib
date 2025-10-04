data modify storage do:io output set value {Name:"minecraft:polished_blackstone_pressure_plate",Properties:{powered:"false"}}
execute if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] run data modify storage do:io output.Properties.powered set value "true"
