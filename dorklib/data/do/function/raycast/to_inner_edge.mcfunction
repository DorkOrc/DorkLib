# Raycasts (voxel traverse) forward until it hits a block, then runs a function at the inside edge of the block. Entities are ignored. If no block is encountered, stop after "max_distance".

execute unless function dorklib:io/init_args_only run return fail

scoreboard players set #traverse_to dorklib.var 1
data modify storage dorklib:main functions."do:raycast/to_block" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/raycast/to_block/main

return run function dorklib:io/post
