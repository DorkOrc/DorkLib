data modify storage do:io output set value {Name:"minecraft:zombie_wall_head",Properties:{"facing": "north", "powered": "false"}}
execute if block ~ ~ ~ zombie_wall_head[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ zombie_wall_head[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ zombie_wall_head[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ zombie_wall_head[powered=true] run data modify storage do:io output.Properties.powered set value "true"
