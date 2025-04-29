execute if block ~ ~ ~ minecraft:coal_ore run return run data modify storage do:io output set value {Name:"minecraft:coal_ore"}
execute if block ~ ~ ~ minecraft:coarse_dirt run return run data modify storage do:io output set value {Name:"minecraft:coarse_dirt"}
execute if block ~ ~ ~ minecraft:cobbled_deepslate run return run data modify storage do:io output set value {Name:"minecraft:cobbled_deepslate"}
execute if block ~ ~ ~ minecraft:cobbled_deepslate_slab run return run function dorklib:impl/block/block_state/tree/cobbled_deepslate_slab
execute if block ~ ~ ~ minecraft:cobbled_deepslate_stairs run return run function dorklib:impl/block/block_state/tree/cobbled_deepslate_stairs
