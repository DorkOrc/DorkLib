data modify storage do:io output set value {Name:"minecraft:stonecutter",Properties:{facing:"north"}}
execute if block ~ ~ ~ stonecutter[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ stonecutter[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ stonecutter[facing=east] run data modify storage do:io output.Properties.facing set value "east"
