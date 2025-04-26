# update distance travelled
scoreboard players operation #distance_travelled dorklib.var += #max_lambda dorklib.var

# update position vector
scoreboard players operation #change dorklib.var = #d_x dorklib.var
scoreboard players operation #change dorklib.var *= #max_lambda dorklib.var
scoreboard players operation #change dorklib.var /= #M dorklib.constant
scoreboard players operation #p_x dorklib.var += #change dorklib.var

scoreboard players operation #change dorklib.var = #d_y dorklib.var
scoreboard players operation #change dorklib.var *= #max_lambda dorklib.var
scoreboard players operation #change dorklib.var /= #M dorklib.constant
scoreboard players operation #p_y dorklib.var += #change dorklib.var

scoreboard players operation #change dorklib.var = #d_z dorklib.var
scoreboard players operation #change dorklib.var *= #max_lambda dorklib.var
scoreboard players operation #change dorklib.var /= #M dorklib.constant
scoreboard players operation #p_z dorklib.var += #change dorklib.var

# run function
scoreboard players set #exceeded_max_distance dorklib.var 1
function dorklib:impl/raycast/to_block/final_destination/main with storage dorklib:local functions."do:raycast/to_block"
