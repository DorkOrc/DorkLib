execute if block ~ ~ ~ minecraft:mangrove_leaves run return run function dorklib:impl/block/block_state/tree/mangrove_leaves
execute if block ~ ~ ~ minecraft:mangrove_log run return run function dorklib:impl/block/block_state/tree/mangrove_log
execute if block ~ ~ ~ minecraft:mangrove_planks run return run data modify storage do:io output set value {Name:"minecraft:mangrove_planks"}
execute if block ~ ~ ~ minecraft:mangrove_pressure_plate run return run function dorklib:impl/block/block_state/tree/mangrove_pressure_plate
