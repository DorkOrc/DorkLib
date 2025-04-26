# r = p + d * L

# clamp distance
scoreboard players operation #max_lambda dorklib.var = #max_distance dorklib.var
scoreboard players operation #max_lambda dorklib.var -= #distance_travelled dorklib.var
execute if score #L_y dorklib.var > #max_lambda dorklib.var run return run function dorklib:impl/raycast/to_block/final_destination/exceeded_max_distance

# update distance travelled
scoreboard players operation #distance_travelled dorklib.var += #L_y dorklib.var

# update position vector
scoreboard players operation #change dorklib.var = #d_x dorklib.var
scoreboard players operation #change dorklib.var *= #L_y dorklib.var
scoreboard players operation #change dorklib.var /= #M dorklib.constant
scoreboard players operation #p_x dorklib.var += #change dorklib.var

execute if score #d_y dorklib.var matches 1.. run scoreboard players set #p_y dorklib.var 0
execute if score #d_y dorklib.var matches ..-1 run scoreboard players set #p_y dorklib.var 1024

scoreboard players operation #change dorklib.var = #d_z dorklib.var
scoreboard players operation #change dorklib.var *= #L_y dorklib.var
scoreboard players operation #change dorklib.var /= #M dorklib.constant
scoreboard players operation #p_z dorklib.var += #change dorklib.var

# update block position and reiterate
execute if score #d_y dorklib.var matches 1.. run scoreboard players add #b_y dorklib.var 1
execute if score #d_y dorklib.var matches 1.. positioned ~ ~1 ~ run return run function dorklib:impl/raycast/to_block/loop

execute if score #d_y dorklib.var matches ..-1 run scoreboard players remove #b_y dorklib.var 1
execute if score #d_y dorklib.var matches ..-1 positioned ~ ~-1 ~ run return run function dorklib:impl/raycast/to_block/loop
