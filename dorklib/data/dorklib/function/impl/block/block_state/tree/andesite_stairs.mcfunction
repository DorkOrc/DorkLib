data modify storage do:io output set value {Name:"minecraft:andesite_stairs",Properties:{"facing": "north", "half": "bottom", "shape": "straight", "waterlogged": "false"}}
execute if block ~ ~ ~ andesite_stairs[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ andesite_stairs[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ andesite_stairs[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ andesite_stairs[half=top] run data modify storage do:io output.Properties.half set value "top"
execute if block ~ ~ ~ andesite_stairs[shape=inner_left] run data modify storage do:io output.Properties.shape set value "inner_left"
execute if block ~ ~ ~ andesite_stairs[shape=inner_right] run data modify storage do:io output.Properties.shape set value "inner_right"
execute if block ~ ~ ~ andesite_stairs[shape=outer_left] run data modify storage do:io output.Properties.shape set value "outer_left"
execute if block ~ ~ ~ andesite_stairs[shape=outer_right] run data modify storage do:io output.Properties.shape set value "outer_right"
execute if block ~ ~ ~ andesite_stairs[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
