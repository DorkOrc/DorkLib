data modify storage do:io output set value {Name:"minecraft:piston",Properties:{"extended": "false", "facing": "north"}}
execute if block ~ ~ ~ piston[extended=true] run data modify storage do:io output.Properties.extended set value "true"
execute if block ~ ~ ~ piston[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ piston[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ piston[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ piston[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ piston[facing=down] run data modify storage do:io output.Properties.facing set value "down"
