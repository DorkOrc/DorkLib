execute if block ~ ~ ~ minecraft:infested_stone run return run data modify storage do:io output set value {Name:"minecraft:infested_stone"}
execute if block ~ ~ ~ minecraft:infested_stone_bricks run return run data modify storage do:io output set value {Name:"minecraft:infested_stone_bricks"}
execute if block ~ ~ ~ minecraft:iron_bars run return run function dorklib:impl/block/block_state/tree/iron_bars
execute if block ~ ~ ~ minecraft:iron_block run return run data modify storage do:io output set value {Name:"minecraft:iron_block"}
execute if block ~ ~ ~ minecraft:iron_chain run return run function dorklib:impl/block/block_state/tree/iron_chain
