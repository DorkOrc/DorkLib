data modify storage do:io output set value {Name:"minecraft:lime_bed",Properties:{"facing": "north", "occupied": "false", "part": "foot"}}
execute if block ~ ~ ~ lime_bed[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ lime_bed[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ lime_bed[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ lime_bed[occupied=true] run data modify storage do:io output.Properties.occupied set value "true"
execute if block ~ ~ ~ lime_bed[part=head] run data modify storage do:io output.Properties.part set value "head"
