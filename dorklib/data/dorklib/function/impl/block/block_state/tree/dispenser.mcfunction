data modify storage do:io output set value {Name:"minecraft:dispenser",Properties:{"facing": "north", "triggered": "false"}}
execute if block ~ ~ ~ dispenser[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ dispenser[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ dispenser[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ dispenser[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ dispenser[facing=down] run data modify storage do:io output.Properties.facing set value "down"
execute if block ~ ~ ~ dispenser[triggered=true] run data modify storage do:io output.Properties.triggered set value "true"
