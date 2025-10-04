execute if block ~ ~ ~ minecraft:quartz_block run return run data modify storage do:io output set value {Name:"minecraft:quartz_block"}
execute if block ~ ~ ~ minecraft:quartz_bricks run return run data modify storage do:io output set value {Name:"minecraft:quartz_bricks"}
execute if block ~ ~ ~ minecraft:quartz_pillar run return run function dorklib:impl/block/block_state/tree/quartz_pillar
execute if block ~ ~ ~ minecraft:quartz_slab run return run function dorklib:impl/block/block_state/tree/quartz_slab
execute if block ~ ~ ~ minecraft:quartz_stairs run return run function dorklib:impl/block/block_state/tree/quartz_stairs
