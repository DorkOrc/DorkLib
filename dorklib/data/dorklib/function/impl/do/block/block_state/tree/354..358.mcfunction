execute if block ~ ~ ~ minecraft:diorite_stairs run return run function dorklib:impl/do/block/block_state/tree/diorite_stairs
execute if block ~ ~ ~ minecraft:diorite_wall run return run function dorklib:impl/do/block/block_state/tree/diorite_wall
execute if block ~ ~ ~ minecraft:dirt run return run data modify storage do:io output set value {Name:"minecraft:dirt"}
execute if block ~ ~ ~ minecraft:dirt_path run return run data modify storage do:io output set value {Name:"minecraft:dirt_path"}
execute if block ~ ~ ~ minecraft:dispenser run return run function dorklib:impl/do/block/block_state/tree/dispenser
