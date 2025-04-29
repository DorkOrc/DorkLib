data modify storage do:io output set value {Name:"minecraft:hopper",Properties:{"enabled": "true", "facing": "down"}}
execute if block ~ ~ ~ hopper[enabled=false] run data modify storage do:io output.Properties.enabled set value "false"
execute if block ~ ~ ~ hopper[facing=north] run data modify storage do:io output.Properties.facing set value "north"
execute if block ~ ~ ~ hopper[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ hopper[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ hopper[facing=east] run data modify storage do:io output.Properties.facing set value "east"
