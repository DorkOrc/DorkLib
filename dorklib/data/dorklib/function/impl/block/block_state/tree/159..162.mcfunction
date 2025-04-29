execute if block ~ ~ ~ minecraft:carved_pumpkin run return run function dorklib:impl/block/block_state/tree/carved_pumpkin
execute if block ~ ~ ~ minecraft:cauldron run return run data modify storage do:io output set value {Name:"minecraft:cauldron"}
execute if block ~ ~ ~ minecraft:cave_air run return run data modify storage do:io output set value {Name:"minecraft:cave_air"}
execute if block ~ ~ ~ minecraft:cave_vines run return run function dorklib:impl/block/block_state/tree/cave_vines
