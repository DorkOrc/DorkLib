data modify storage do:io output set value {Name:"minecraft:moving_piston",Properties:{"type": "normal", "facing": "north"}}
execute if block ~ ~ ~ moving_piston[type=sticky] run data modify storage do:io output.Properties.type set value "sticky"
execute if block ~ ~ ~ moving_piston[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ moving_piston[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ moving_piston[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ moving_piston[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ moving_piston[facing=down] run data modify storage do:io output.Properties.facing set value "down"
