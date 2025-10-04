execute if block ~ ~ ~ minecraft:enchanting_table run return run data modify storage do:io output set value {Name:"minecraft:enchanting_table"}
execute if block ~ ~ ~ minecraft:end_gateway run return run data modify storage do:io output set value {Name:"minecraft:end_gateway"}
execute if block ~ ~ ~ minecraft:end_portal run return run data modify storage do:io output set value {Name:"minecraft:end_portal"}
execute if block ~ ~ ~ minecraft:end_portal_frame run return run function dorklib:impl/block/block_state/tree/end_portal_frame
execute if block ~ ~ ~ minecraft:end_rod run return run function dorklib:impl/block/block_state/tree/end_rod
