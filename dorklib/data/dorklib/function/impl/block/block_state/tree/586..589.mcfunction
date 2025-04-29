execute if block ~ ~ ~ minecraft:moving_piston run return run function dorklib:impl/block/block_state/tree/moving_piston
execute if block ~ ~ ~ minecraft:mud run return run data modify storage do:io output set value {Name:"minecraft:mud"}
execute if block ~ ~ ~ minecraft:mud_brick_slab run return run function dorklib:impl/block/block_state/tree/mud_brick_slab
execute if block ~ ~ ~ minecraft:mud_brick_stairs run return run function dorklib:impl/block/block_state/tree/mud_brick_stairs
