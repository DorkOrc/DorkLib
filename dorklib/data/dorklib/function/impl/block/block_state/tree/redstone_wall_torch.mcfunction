data modify storage do:io output set value {Name:"minecraft:redstone_wall_torch",Properties:{"facing": "north", "lit": "true"}}
execute if block ~ ~ ~ redstone_wall_torch[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ redstone_wall_torch[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ redstone_wall_torch[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ redstone_wall_torch[lit=false] run data modify storage do:io output.Properties.lit set value "false"
