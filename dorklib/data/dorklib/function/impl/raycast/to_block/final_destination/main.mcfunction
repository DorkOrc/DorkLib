# arguments: function

execute if score #require_hit dorklib.var matches 1 if score #exceeded_max_distance dorklib.var matches 1 run return fail

# 0 => block centre
$execute if score #traverse_to dorklib.var matches 0 align xyz run return run function $(function)

# 1 => block inner edge
execute if score #traverse_to dorklib.var matches 1 if score #p_x dorklib.var matches 1024 run scoreboard players set #p_x dorklib.var 1023
execute if score #traverse_to dorklib.var matches 1 if score #p_y dorklib.var matches 1024 run scoreboard players set #p_y dorklib.var 1023
execute if score #traverse_to dorklib.var matches 1 if score #p_z dorklib.var matches 1024 run scoreboard players set #p_z dorklib.var 1023

# 2 => block outer edge
execute if score #traverse_to dorklib.var matches 2 if score #p_x dorklib.var matches 0 run scoreboard players set #p_x dorklib.var -1
execute if score #traverse_to dorklib.var matches 2 if score #p_y dorklib.var matches 0 run scoreboard players set #p_y dorklib.var -1
execute if score #traverse_to dorklib.var matches 2 if score #p_z dorklib.var matches 0 run scoreboard players set #p_z dorklib.var -1

execute store result storage dorklib:local functions."do:raycast/to_block".x double 0.0009765625 run scoreboard players get #p_x dorklib.var
execute store result storage dorklib:local functions."do:raycast/to_block".y double 0.0009765625 run scoreboard players get #p_y dorklib.var
execute store result storage dorklib:local functions."do:raycast/to_block".z double 0.0009765625 run scoreboard players get #p_z dorklib.var

function dorklib:impl/raycast/to_block/final_destination/edge with storage dorklib:local functions."do:raycast/to_block"
