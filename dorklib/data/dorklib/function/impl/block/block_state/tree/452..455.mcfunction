execute if block ~ ~ ~ minecraft:iron_bars run return run function dorklib:impl/block/block_state/tree/iron_bars
execute if block ~ ~ ~ minecraft:iron_block run return run data modify storage do:io output set value {Name:"minecraft:iron_block"}
execute if block ~ ~ ~ minecraft:iron_door run return run function dorklib:impl/block/block_state/tree/iron_door
execute if block ~ ~ ~ minecraft:iron_ore run return run data modify storage do:io output set value {Name:"minecraft:iron_ore"}
