execute if block ~ ~ ~ minecraft:detector_rail run return run function dorklib:impl/do/block/block_state/tree/detector_rail
execute if block ~ ~ ~ minecraft:diamond_block run return run data modify storage do:io output set value {Name:"minecraft:diamond_block"}
execute if block ~ ~ ~ minecraft:diamond_ore run return run data modify storage do:io output set value {Name:"minecraft:diamond_ore"}
execute if block ~ ~ ~ minecraft:diorite run return run data modify storage do:io output set value {Name:"minecraft:diorite"}
execute if block ~ ~ ~ minecraft:diorite_slab run return run function dorklib:impl/do/block/block_state/tree/diorite_slab
