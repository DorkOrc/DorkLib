data modify storage do:io output set value {Name:"minecraft:chest",Properties:{type:"single",facing:"north",waterlogged:"false"}}
execute if block ~ ~ ~ chest[type=left] run data modify storage do:io output.Properties.type set value "left"
execute if block ~ ~ ~ chest[type=right] run data modify storage do:io output.Properties.type set value "right"
execute if block ~ ~ ~ chest[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ chest[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ chest[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ chest[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
