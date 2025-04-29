execute if block ~ ~ ~ minecraft:crying_obsidian run return run data modify storage do:io output set value {Name:"minecraft:crying_obsidian"}
execute if block ~ ~ ~ minecraft:cut_copper run return run data modify storage do:io output set value {Name:"minecraft:cut_copper"}
execute if block ~ ~ ~ minecraft:cut_copper_slab run return run function dorklib:impl/block/block_state/tree/cut_copper_slab
execute if block ~ ~ ~ minecraft:cut_copper_stairs run return run function dorklib:impl/block/block_state/tree/cut_copper_stairs
execute if block ~ ~ ~ minecraft:cut_red_sandstone run return run data modify storage do:io output set value {Name:"minecraft:cut_red_sandstone"}
