# arguments: location_condition

# stop after max iterations
execute if score #i dorklib.var > #max_iterations dorklib.var run return run function dorklib:impl/raycast/to_block/final_destination/main with storage dorklib:main functions."do:raycast/to_block"
scoreboard players add #i dorklib.var 1

# stop if block condition is satisfied
$execute if predicate $(location_condition) run return run function dorklib:impl/raycast/to_block/final_destination/main with storage dorklib:main functions."do:raycast/to_block"

# traverse voxel
execute if score #d_x dorklib.var matches 0 run scoreboard players set #L_x dorklib.var 2147483647
execute if score #d_x dorklib.var matches 1.. run function dorklib:impl/raycast/to_block/get_lambda/east
execute if score #d_x dorklib.var matches ..-1 run function dorklib:impl/raycast/to_block/get_lambda/west

execute if score #d_y dorklib.var matches 0 run scoreboard players set #L_y dorklib.var 2147483647
execute if score #d_y dorklib.var matches 1.. run function dorklib:impl/raycast/to_block/get_lambda/up
execute if score #d_y dorklib.var matches ..-1 run function dorklib:impl/raycast/to_block/get_lambda/down

execute if score #d_z dorklib.var matches 0 run scoreboard players set #L_z dorklib.var 2147483647
execute if score #d_z dorklib.var matches 1.. run function dorklib:impl/raycast/to_block/get_lambda/south
execute if score #d_z dorklib.var matches ..-1 run function dorklib:impl/raycast/to_block/get_lambda/north

execute if score #L_y dorklib.var <= #L_x dorklib.var if score #L_y dorklib.var <= #L_z dorklib.var run return run function dorklib:impl/raycast/to_block/move_block/y_axis
execute if score #L_x dorklib.var <= #L_y dorklib.var if score #L_x dorklib.var <= #L_z dorklib.var run return run function dorklib:impl/raycast/to_block/move_block/x_axis
execute if score #L_z dorklib.var <= #L_x dorklib.var if score #L_z dorklib.var <= #L_y dorklib.var run return run function dorklib:impl/raycast/to_block/move_block/z_axis
