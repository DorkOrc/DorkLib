data modify storage do:io output set value {Name:"minecraft:trapped_chest",Properties:{"type": "single", "facing": "north", "waterlogged": "false"}}
execute if block ~ ~ ~ trapped_chest[type=left] run data modify storage do:io output.Properties.type set value "left"
execute if block ~ ~ ~ trapped_chest[type=right] run data modify storage do:io output.Properties.type set value "right"
execute if block ~ ~ ~ trapped_chest[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ trapped_chest[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ trapped_chest[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ trapped_chest[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
