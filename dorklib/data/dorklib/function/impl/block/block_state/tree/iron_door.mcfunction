data modify storage do:io output set value {Name:"minecraft:iron_door",Properties:{"facing": "north", "half": "lower", "hinge": "left", "open": "false", "powered": "false"}}
execute if block ~ ~ ~ iron_door[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ iron_door[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ iron_door[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ iron_door[half=upper] run data modify storage do:io output.Properties.half set value "upper"
execute if block ~ ~ ~ iron_door[hinge=right] run data modify storage do:io output.Properties.hinge set value "right"
execute if block ~ ~ ~ iron_door[open=true] run data modify storage do:io output.Properties.open set value "true"
execute if block ~ ~ ~ iron_door[powered=true] run data modify storage do:io output.Properties.powered set value "true"
