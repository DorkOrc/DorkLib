execute if block ~ ~ ~ minecraft:moss_carpet run return run data modify storage do:io output set value {Name:"minecraft:moss_carpet"}
execute if block ~ ~ ~ minecraft:mossy_cobblestone run return run data modify storage do:io output set value {Name:"minecraft:mossy_cobblestone"}
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab run return run function dorklib:impl/block/block_state/tree/mossy_cobblestone_slab
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs run return run function dorklib:impl/block/block_state/tree/mossy_cobblestone_stairs
