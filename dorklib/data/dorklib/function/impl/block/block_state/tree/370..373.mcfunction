execute if block ~ ~ ~ minecraft:exposed_copper_door run return run function dorklib:impl/block/block_state/tree/exposed_copper_door
execute if block ~ ~ ~ minecraft:exposed_copper_grate run return run function dorklib:impl/block/block_state/tree/exposed_copper_grate
execute if block ~ ~ ~ minecraft:exposed_copper_trapdoor run return run function dorklib:impl/block/block_state/tree/exposed_copper_trapdoor
execute if block ~ ~ ~ minecraft:exposed_cut_copper run return run data modify storage do:io output set value {Name:"minecraft:exposed_cut_copper"}
