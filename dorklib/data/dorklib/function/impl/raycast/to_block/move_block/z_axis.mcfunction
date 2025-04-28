# r = p + d * L

# clamp distance
scoreboard players operation #max_lambda dorklib.var = #max_distance dorklib.var
scoreboard players operation #max_lambda dorklib.var -= #distance_travelled dorklib.var
execute if score #L_z dorklib.var > #max_lambda dorklib.var run return run function dorklib:impl/raycast/to_block/final_destination/exceeded_max_distance

# update distance travelled
scoreboard players operation #distance_travelled dorklib.var += #L_z dorklib.var

# update position vector
scoreboard players operation #change dorklib.var = #d_x dorklib.var
scoreboard players operation #change dorklib.var *= #L_z dorklib.var
scoreboard players operation #change dorklib.var /= #M dorklib.constant
scoreboard players operation #p_x dorklib.var += #change dorklib.var

scoreboard players operation #change dorklib.var = #d_y dorklib.var
scoreboard players operation #change dorklib.var *= #L_z dorklib.var
scoreboard players operation #change dorklib.var /= #M dorklib.constant
scoreboard players operation #p_y dorklib.var += #change dorklib.var

execute if score #d_z dorklib.var matches 1.. run scoreboard players set #p_z dorklib.var 0
execute if score #d_z dorklib.var matches ..-1 run scoreboard players set #p_z dorklib.var 1024

# update block position and reiterate
execute if score #d_z dorklib.var matches 1.. run scoreboard players add #b_z dorklib.var 1
execute if score #d_z dorklib.var matches 1.. positioned ~ ~ ~1 run return run function dorklib:impl/raycast/to_block/loop with storage dorklib:main functions."do:raycast/to_block"

execute if score #d_z dorklib.var matches ..-1 run scoreboard players remove #b_z dorklib.var 1
execute if score #d_z dorklib.var matches ..-1 positioned ~ ~ ~-1 run return run function dorklib:impl/raycast/to_block/loop with storage dorklib:main functions."do:raycast/to_block"
