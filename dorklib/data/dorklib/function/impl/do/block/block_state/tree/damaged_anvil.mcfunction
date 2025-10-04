data modify storage do:io output set value {Name:"minecraft:damaged_anvil",Properties:{facing:"north"}}
execute if block ~ ~ ~ damaged_anvil[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ damaged_anvil[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ damaged_anvil[facing=east] run data modify storage do:io output.Properties.facing set value "east"
