data modify storage do:io output set value {Name:"minecraft:soul_wall_torch",Properties:{"facing": "north"}}
execute if block ~ ~ ~ soul_wall_torch[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ soul_wall_torch[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ soul_wall_torch[facing=east] run data modify storage do:io output.Properties.facing set value "east"
