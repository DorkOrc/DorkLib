execute if block ~ ~ ~ minecraft:waxed_weathered_cut_copper_stairs run return run function dorklib:impl/block/block_state/tree/waxed_weathered_cut_copper_stairs
execute if block ~ ~ ~ minecraft:weathered_chiseled_copper run return run data modify storage do:io output set value {Name:"minecraft:weathered_chiseled_copper"}
execute if block ~ ~ ~ minecraft:weathered_copper run return run data modify storage do:io output set value {Name:"minecraft:weathered_copper"}
execute if block ~ ~ ~ minecraft:weathered_copper_bulb run return run function dorklib:impl/block/block_state/tree/weathered_copper_bulb
execute if block ~ ~ ~ minecraft:weathered_copper_door run return run function dorklib:impl/block/block_state/tree/weathered_copper_door
