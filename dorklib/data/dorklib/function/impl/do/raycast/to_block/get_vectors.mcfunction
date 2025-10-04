# get b (block pos)
data modify storage dorklib:main functions."do:raycast/to_block".start_pos set from entity @s Pos
execute store result score #b_x dorklib.var store result storage dorklib:main functions."do:raycast/to_block".offset_x int -1 run data get storage dorklib:main functions."do:raycast/to_block".start_pos[0] 1
execute store result score #b_y dorklib.var store result storage dorklib:main functions."do:raycast/to_block".offset_y int -1 run data get storage dorklib:main functions."do:raycast/to_block".start_pos[1] 1
execute store result score #b_z dorklib.var store result storage dorklib:main functions."do:raycast/to_block".offset_z int -1 run data get storage dorklib:main functions."do:raycast/to_block".start_pos[2] 1

# get p (position) vector
function dorklib:impl/do/raycast/to_block/get_r0 with storage dorklib:main functions."do:raycast/to_block"
data modify storage dorklib:main functions."do:raycast/to_block".r0 set from entity @s Pos
execute store result score #p_x dorklib.var run data get storage dorklib:main functions."do:raycast/to_block".r0[0] 1024
execute store result score #p_y dorklib.var run data get storage dorklib:main functions."do:raycast/to_block".r0[1] 1024
execute store result score #p_z dorklib.var run data get storage dorklib:main functions."do:raycast/to_block".r0[2] 1024

# get d (direction) vector
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp @s ~ ~ ~
data modify storage dorklib:main functions."do:raycast/to_block".d set from entity @s Pos
execute store result score #d_x dorklib.var run data get storage dorklib:main functions."do:raycast/to_block".d[0] 1024
execute store result score #d_y dorklib.var run data get storage dorklib:main functions."do:raycast/to_block".d[1] 1024
execute store result score #d_z dorklib.var run data get storage dorklib:main functions."do:raycast/to_block".d[2] 1024

function do:remove_entity
