data modify storage do:io output set value {Name:"minecraft:attached_melon_stem",Properties:{"facing": "north"}}
execute if block ~ ~ ~ attached_melon_stem[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ attached_melon_stem[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ attached_melon_stem[facing=east] run data modify storage do:io output.Properties.facing set value "east"
