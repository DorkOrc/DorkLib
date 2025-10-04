data modify storage do:io output set value {Name:"minecraft:ender_chest",Properties:{facing:"north",waterlogged:"false"}}
execute if block ~ ~ ~ ender_chest[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ ender_chest[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ ender_chest[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ ender_chest[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
