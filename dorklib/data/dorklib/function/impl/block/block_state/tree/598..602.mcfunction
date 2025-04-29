execute if block ~ ~ ~ minecraft:nether_brick_wall run return run function dorklib:impl/block/block_state/tree/nether_brick_wall
execute if block ~ ~ ~ minecraft:nether_bricks run return run data modify storage do:io output set value {Name:"minecraft:nether_bricks"}
execute if block ~ ~ ~ minecraft:nether_gold_ore run return run data modify storage do:io output set value {Name:"minecraft:nether_gold_ore"}
execute if block ~ ~ ~ minecraft:nether_portal run return run function dorklib:impl/block/block_state/tree/nether_portal
execute if block ~ ~ ~ minecraft:nether_quartz_ore run return run data modify storage do:io output set value {Name:"minecraft:nether_quartz_ore"}
