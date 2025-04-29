data modify storage do:io output set value {Name:"minecraft:big_dripleaf_stem",Properties:{"facing": "north", "waterlogged": "false"}}
execute if block ~ ~ ~ big_dripleaf_stem[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ big_dripleaf_stem[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ big_dripleaf_stem[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ big_dripleaf_stem[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
