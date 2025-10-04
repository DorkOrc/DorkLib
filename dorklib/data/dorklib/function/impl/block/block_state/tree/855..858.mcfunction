execute if block ~ ~ ~ minecraft:red_sand run return run data modify storage do:io output set value {Name:"minecraft:red_sand"}
execute if block ~ ~ ~ minecraft:red_sandstone run return run data modify storage do:io output set value {Name:"minecraft:red_sandstone"}
execute if block ~ ~ ~ minecraft:red_sandstone_slab run return run function dorklib:impl/block/block_state/tree/red_sandstone_slab
execute if block ~ ~ ~ minecraft:red_sandstone_stairs run return run function dorklib:impl/block/block_state/tree/red_sandstone_stairs
