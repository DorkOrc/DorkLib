execute if block ~ ~ ~ minecraft:cut_red_sandstone_slab run return run function dorklib:impl/block/block_state/tree/cut_red_sandstone_slab
execute if block ~ ~ ~ minecraft:cut_sandstone run return run data modify storage do:io output set value {Name:"minecraft:cut_sandstone"}
execute if block ~ ~ ~ minecraft:cut_sandstone_slab run return run function dorklib:impl/block/block_state/tree/cut_sandstone_slab
execute if block ~ ~ ~ minecraft:cyan_banner run return run function dorklib:impl/block/block_state/tree/cyan_banner
