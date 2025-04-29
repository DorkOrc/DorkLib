data modify storage do:io output set value {Name:"minecraft:bamboo_mosaic_slab",Properties:{"type": "bottom", "waterlogged": "false"}}
execute if block ~ ~ ~ bamboo_mosaic_slab[type=top] run data modify storage do:io output.Properties.type set value "top"
execute if block ~ ~ ~ bamboo_mosaic_slab[type=double] run data modify storage do:io output.Properties.type set value "double"
execute if block ~ ~ ~ bamboo_mosaic_slab[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
