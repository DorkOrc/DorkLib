data modify storage do:io output set value {Name:"minecraft:acacia_door",Properties:{"facing": "north", "half": "lower", "hinge": "left", "open": "false", "powered": "false"}}
execute if block ~ ~ ~ acacia_door[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ acacia_door[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ acacia_door[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ acacia_door[half=upper] run data modify storage do:io output.Properties.half set value "upper"
execute if block ~ ~ ~ acacia_door[hinge=right] run data modify storage do:io output.Properties.hinge set value "right"
execute if block ~ ~ ~ acacia_door[open=true] run data modify storage do:io output.Properties.open set value "true"
execute if block ~ ~ ~ acacia_door[powered=true] run data modify storage do:io output.Properties.powered set value "true"
