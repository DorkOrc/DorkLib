data modify storage do:io output set value {Name:"minecraft:acacia_trapdoor",Properties:{"facing": "north", "half": "bottom", "open": "false", "powered": "false", "waterlogged": "false"}}
execute if block ~ ~ ~ acacia_trapdoor[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ acacia_trapdoor[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ acacia_trapdoor[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ acacia_trapdoor[half=top] run data modify storage do:io output.Properties.half set value "top"
execute if block ~ ~ ~ acacia_trapdoor[open=true] run data modify storage do:io output.Properties.open set value "true"
execute if block ~ ~ ~ acacia_trapdoor[powered=true] run data modify storage do:io output.Properties.powered set value "true"
execute if block ~ ~ ~ acacia_trapdoor[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
