execute if block ~ ~ ~ minecraft:cobbled_deepslate_wall run return run function dorklib:impl/block/block_state/tree/cobbled_deepslate_wall
execute if block ~ ~ ~ minecraft:cobblestone run return run data modify storage do:io output set value {Name:"minecraft:cobblestone"}
execute if block ~ ~ ~ minecraft:cobblestone_slab run return run function dorklib:impl/block/block_state/tree/cobblestone_slab
execute if block ~ ~ ~ minecraft:cobblestone_stairs run return run function dorklib:impl/block/block_state/tree/cobblestone_stairs
