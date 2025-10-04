execute if block ~ ~ ~ minecraft:end_stone_bricks run return run data modify storage do:io output set value {Name:"minecraft:end_stone_bricks"}
execute if block ~ ~ ~ minecraft:ender_chest run return run function dorklib:impl/block/block_state/tree/ender_chest
execute if block ~ ~ ~ minecraft:exposed_chiseled_copper run return run data modify storage do:io output set value {Name:"minecraft:exposed_chiseled_copper"}
execute if block ~ ~ ~ minecraft:exposed_copper run return run data modify storage do:io output set value {Name:"minecraft:exposed_copper"}
execute if block ~ ~ ~ minecraft:exposed_copper_bars run return run function dorklib:impl/block/block_state/tree/exposed_copper_bars
