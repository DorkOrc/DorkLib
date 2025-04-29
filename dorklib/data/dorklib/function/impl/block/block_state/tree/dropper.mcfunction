data modify storage do:io output set value {Name:"minecraft:dropper",Properties:{"facing": "north", "triggered": "false"}}
execute if block ~ ~ ~ dropper[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ dropper[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ dropper[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ dropper[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ dropper[facing=down] run data modify storage do:io output.Properties.facing set value "down"
execute if block ~ ~ ~ dropper[triggered=true] run data modify storage do:io output.Properties.triggered set value "true"
