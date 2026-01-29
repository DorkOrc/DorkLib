# Raycasts (voxel traverse) forward until it hits a block, then runs a function at the centre of the block. Entities are ignored. If no block is encountered, stop after "max_distance".
# -> None

scoreboard players set #traverse_to dorklib.var 0
data modify storage dorklib:main functions."do:raycast/to_block" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/raycast/to_block/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:raycast/to_block"
return run function dorklib:io/post
