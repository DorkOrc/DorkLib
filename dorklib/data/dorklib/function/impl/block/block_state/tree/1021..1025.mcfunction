execute if block ~ ~ ~ minecraft:waxed_chiseled_copper run return run data modify storage do:io output set value {Name:"minecraft:waxed_chiseled_copper"}
execute if block ~ ~ ~ minecraft:waxed_copper_block run return run data modify storage do:io output set value {Name:"minecraft:waxed_copper_block"}
execute if block ~ ~ ~ minecraft:waxed_copper_bulb run return run function dorklib:impl/block/block_state/tree/waxed_copper_bulb
execute if block ~ ~ ~ minecraft:waxed_copper_door run return run function dorklib:impl/block/block_state/tree/waxed_copper_door
execute if block ~ ~ ~ minecraft:waxed_copper_grate run return run function dorklib:impl/block/block_state/tree/waxed_copper_grate
