data modify storage do:io output set value {Name:"minecraft:pale_oak_wall_hanging_sign",Properties:{"facing": "north", "waterlogged": "false"}}
execute if block ~ ~ ~ pale_oak_wall_hanging_sign[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ pale_oak_wall_hanging_sign[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ pale_oak_wall_hanging_sign[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ pale_oak_wall_hanging_sign[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
