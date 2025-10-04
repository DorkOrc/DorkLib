data modify storage do:io output set value {Name:"minecraft:furnace",Properties:{facing:"north",lit:"false"}}
execute if block ~ ~ ~ furnace[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ furnace[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ furnace[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ furnace[lit=true] run data modify storage do:io output.Properties.lit set value "true"
