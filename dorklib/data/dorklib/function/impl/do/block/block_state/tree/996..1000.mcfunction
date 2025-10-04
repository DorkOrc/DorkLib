execute if block ~ ~ ~ minecraft:tall_seagrass run return run function dorklib:impl/do/block/block_state/tree/tall_seagrass
execute if block ~ ~ ~ minecraft:target run return run function dorklib:impl/do/block/block_state/tree/target
execute if block ~ ~ ~ minecraft:terracotta run return run data modify storage do:io output set value {Name:"minecraft:terracotta"}
execute if block ~ ~ ~ minecraft:test_block run return run function dorklib:impl/do/block/block_state/tree/test_block
execute if block ~ ~ ~ minecraft:test_instance_block run return run data modify storage do:io output set value {Name:"minecraft:test_instance_block"}
