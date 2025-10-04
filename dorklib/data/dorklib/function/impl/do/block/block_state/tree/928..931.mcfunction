execute if block ~ ~ ~ minecraft:soul_sand run return run data modify storage do:io output set value {Name:"minecraft:soul_sand"}
execute if block ~ ~ ~ minecraft:soul_soil run return run data modify storage do:io output set value {Name:"minecraft:soul_soil"}
execute if block ~ ~ ~ minecraft:soul_torch run return run data modify storage do:io output set value {Name:"minecraft:soul_torch"}
execute if block ~ ~ ~ minecraft:soul_wall_torch run return run function dorklib:impl/do/block/block_state/tree/soul_wall_torch
