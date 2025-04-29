data modify storage do:io output set value {Name:"minecraft:horn_coral_wall_fan",Properties:{"facing": "north", "waterlogged": "true"}}
execute if block ~ ~ ~ horn_coral_wall_fan[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ horn_coral_wall_fan[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ horn_coral_wall_fan[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ horn_coral_wall_fan[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
