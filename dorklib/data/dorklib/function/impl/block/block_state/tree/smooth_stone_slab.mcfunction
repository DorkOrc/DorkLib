data modify storage do:io output set value {Name:"minecraft:smooth_stone_slab",Properties:{"type": "bottom", "waterlogged": "false"}}
execute if block ~ ~ ~ smooth_stone_slab[type=top] run data modify storage do:io output.Properties.type set value "top"
execute if block ~ ~ ~ smooth_stone_slab[type=double] run data modify storage do:io output.Properties.type set value "double"
execute if block ~ ~ ~ smooth_stone_slab[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
