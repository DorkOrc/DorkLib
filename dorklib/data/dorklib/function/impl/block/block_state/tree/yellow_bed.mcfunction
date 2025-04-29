data modify storage do:io output set value {Name:"minecraft:yellow_bed",Properties:{"facing": "north", "occupied": "false", "part": "foot"}}
execute if block ~ ~ ~ yellow_bed[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ yellow_bed[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ yellow_bed[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ yellow_bed[occupied=true] run data modify storage do:io output.Properties.occupied set value "true"
execute if block ~ ~ ~ yellow_bed[part=head] run data modify storage do:io output.Properties.part set value "head"
