data modify storage do:io output set value {Name:"minecraft:command_block",Properties:{"conditional": "false", "facing": "north"}}
execute if block ~ ~ ~ command_block[conditional=true] run data modify storage do:io output.Properties.conditional set value "true"
execute if block ~ ~ ~ command_block[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ command_block[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ command_block[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ command_block[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ command_block[facing=down] run data modify storage do:io output.Properties.facing set value "down"
