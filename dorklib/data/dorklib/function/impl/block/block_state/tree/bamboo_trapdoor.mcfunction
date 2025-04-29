data modify storage do:io output set value {Name:"minecraft:bamboo_trapdoor",Properties:{"facing": "north", "half": "bottom", "open": "false", "powered": "false", "waterlogged": "false"}}
execute if block ~ ~ ~ bamboo_trapdoor[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ bamboo_trapdoor[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ bamboo_trapdoor[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ bamboo_trapdoor[half=top] run data modify storage do:io output.Properties.half set value "top"
execute if block ~ ~ ~ bamboo_trapdoor[open=true] run data modify storage do:io output.Properties.open set value "true"
execute if block ~ ~ ~ bamboo_trapdoor[powered=true] run data modify storage do:io output.Properties.powered set value "true"
execute if block ~ ~ ~ bamboo_trapdoor[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
