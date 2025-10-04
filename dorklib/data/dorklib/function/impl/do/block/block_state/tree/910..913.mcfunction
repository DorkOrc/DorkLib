execute if block ~ ~ ~ minecraft:smooth_basalt run return run data modify storage do:io output set value {Name:"minecraft:smooth_basalt"}
execute if block ~ ~ ~ minecraft:smooth_quartz run return run data modify storage do:io output set value {Name:"minecraft:smooth_quartz"}
execute if block ~ ~ ~ minecraft:smooth_quartz_slab run return run function dorklib:impl/do/block/block_state/tree/smooth_quartz_slab
execute if block ~ ~ ~ minecraft:smooth_quartz_stairs run return run function dorklib:impl/do/block/block_state/tree/smooth_quartz_stairs
