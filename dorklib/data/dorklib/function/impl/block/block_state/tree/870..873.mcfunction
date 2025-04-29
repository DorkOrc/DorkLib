execute if block ~ ~ ~ minecraft:short_dry_grass run return run data modify storage do:io output set value {Name:"minecraft:short_dry_grass"}
execute if block ~ ~ ~ minecraft:short_grass run return run data modify storage do:io output set value {Name:"minecraft:short_grass"}
execute if block ~ ~ ~ minecraft:shroomlight run return run data modify storage do:io output set value {Name:"minecraft:shroomlight"}
execute if block ~ ~ ~ minecraft:shulker_box run return run function dorklib:impl/block/block_state/tree/shulker_box
