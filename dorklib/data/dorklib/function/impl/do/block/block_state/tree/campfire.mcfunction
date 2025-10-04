data modify storage do:io output set value {Name:"minecraft:campfire",Properties:{facing:"north",lit:"true",signal_fire:"false",waterlogged:"false"}}
execute if block ~ ~ ~ campfire[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ campfire[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ campfire[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ campfire[lit=false] run data modify storage do:io output.Properties.lit set value "false"
execute if block ~ ~ ~ campfire[signal_fire=true] run data modify storage do:io output.Properties.signal_fire set value "true"
execute if block ~ ~ ~ campfire[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
