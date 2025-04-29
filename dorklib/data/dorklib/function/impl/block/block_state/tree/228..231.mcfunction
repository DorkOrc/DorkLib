execute if block ~ ~ ~ minecraft:cracked_polished_blackstone_bricks run return run data modify storage do:io output set value {Name:"minecraft:cracked_polished_blackstone_bricks"}
execute if block ~ ~ ~ minecraft:cracked_stone_bricks run return run data modify storage do:io output set value {Name:"minecraft:cracked_stone_bricks"}
execute if block ~ ~ ~ minecraft:crafter run return run function dorklib:impl/block/block_state/tree/crafter
execute if block ~ ~ ~ minecraft:crafting_table run return run data modify storage do:io output set value {Name:"minecraft:crafting_table"}
