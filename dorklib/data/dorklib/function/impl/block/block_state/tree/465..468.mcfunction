execute if block ~ ~ ~ minecraft:jungle_leaves run return run function dorklib:impl/block/block_state/tree/jungle_leaves
execute if block ~ ~ ~ minecraft:jungle_log run return run function dorklib:impl/block/block_state/tree/jungle_log
execute if block ~ ~ ~ minecraft:jungle_planks run return run data modify storage do:io output set value {Name:"minecraft:jungle_planks"}
execute if block ~ ~ ~ minecraft:jungle_pressure_plate run return run function dorklib:impl/block/block_state/tree/jungle_pressure_plate
