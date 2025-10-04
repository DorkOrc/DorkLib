data modify storage do:io output set value {Name:"minecraft:copper_bulb",Properties:{lit:"false",powered:"false"}}
execute if block ~ ~ ~ copper_bulb[lit=true] run data modify storage do:io output.Properties.lit set value "true"
execute if block ~ ~ ~ copper_bulb[powered=true] run data modify storage do:io output.Properties.powered set value "true"
