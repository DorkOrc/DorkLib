data modify storage do:io output set value {Name:"minecraft:ladder",Properties:{facing:"north",waterlogged:"false"}}
execute if block ~ ~ ~ ladder[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ ladder[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ ladder[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ ladder[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
