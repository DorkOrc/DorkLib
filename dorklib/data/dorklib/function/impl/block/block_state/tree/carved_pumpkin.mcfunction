data modify storage do:io output set value {Name:"minecraft:carved_pumpkin",Properties:{"facing": "north"}}
execute if block ~ ~ ~ carved_pumpkin[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ carved_pumpkin[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ carved_pumpkin[facing=east] run data modify storage do:io output.Properties.facing set value "east"
