data modify storage do:io output set value {Name:"minecraft:crimson_slab",Properties:{"type": "bottom", "waterlogged": "false"}}
execute if block ~ ~ ~ crimson_slab[type=top] run data modify storage do:io output.Properties.type set value "top"
execute if block ~ ~ ~ crimson_slab[type=double] run data modify storage do:io output.Properties.type set value "double"
execute if block ~ ~ ~ crimson_slab[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
