execute if block ~ ~ ~ minecraft:ender_chest run return run function dorklib:impl/block/block_state/tree/ender_chest
execute if block ~ ~ ~ minecraft:exposed_chiseled_copper run return run data modify storage do:io output set value {Name:"minecraft:exposed_chiseled_copper"}
execute if block ~ ~ ~ minecraft:exposed_copper run return run data modify storage do:io output set value {Name:"minecraft:exposed_copper"}
execute if block ~ ~ ~ minecraft:exposed_copper_bulb run return run function dorklib:impl/block/block_state/tree/exposed_copper_bulb
