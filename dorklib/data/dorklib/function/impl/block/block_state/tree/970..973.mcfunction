execute if block ~ ~ ~ minecraft:test_instance_block run return run data modify storage do:io output set value {Name:"minecraft:test_instance_block"}
execute if block ~ ~ ~ minecraft:tinted_glass run return run data modify storage do:io output set value {Name:"minecraft:tinted_glass"}
execute if block ~ ~ ~ minecraft:tnt run return run function dorklib:impl/block/block_state/tree/tnt
execute if block ~ ~ ~ minecraft:torch run return run data modify storage do:io output set value {Name:"minecraft:torch"}
