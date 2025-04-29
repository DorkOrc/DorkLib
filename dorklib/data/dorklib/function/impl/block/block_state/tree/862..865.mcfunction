execute if block ~ ~ ~ minecraft:sculk run return run data modify storage do:io output set value {Name:"minecraft:sculk"}
execute if block ~ ~ ~ minecraft:sculk_catalyst run return run function dorklib:impl/block/block_state/tree/sculk_catalyst
execute if block ~ ~ ~ minecraft:sculk_sensor run return run function dorklib:impl/block/block_state/tree/sculk_sensor
execute if block ~ ~ ~ minecraft:sculk_shrieker run return run function dorklib:impl/block/block_state/tree/sculk_shrieker
