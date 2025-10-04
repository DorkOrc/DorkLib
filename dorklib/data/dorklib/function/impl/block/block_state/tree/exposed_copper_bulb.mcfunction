data modify storage do:io output set value {Name:"minecraft:exposed_copper_bulb",Properties:{lit:"false",powered:"false"}}
execute if block ~ ~ ~ exposed_copper_bulb[lit=true] run data modify storage do:io output.Properties.lit set value "true"
execute if block ~ ~ ~ exposed_copper_bulb[powered=true] run data modify storage do:io output.Properties.powered set value "true"
