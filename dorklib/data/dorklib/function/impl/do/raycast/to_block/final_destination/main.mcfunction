# arguments: function

execute if score #require_hit dorklib.var matches 1 if score #exceeded_max_distance dorklib.var matches 1 run return fail

# 0 => block centre
$execute if score #traverse_to dorklib.var matches 0 run return run function $(function)

# 1 => block inner edge (always inside the voxel)
# up (+Y) offset
execute if score #traverse_to dorklib.var matches 1 if score #edge_facing dorklib.var matches 1 unless score #p_y dorklib.var matches 0 run scoreboard players remove #p_y dorklib.var 1
# south (+Z) offset
execute if score #traverse_to dorklib.var matches 1 if score #edge_facing dorklib.var matches 3 unless score #p_z dorklib.var matches 0 run scoreboard players remove #p_z dorklib.var 1
# east (+X) offset
execute if score #traverse_to dorklib.var matches 1 if score #edge_facing dorklib.var matches 5 unless score #p_x dorklib.var matches 0 run scoreboard players remove #p_x dorklib.var 1

# 2 => block outer edge (may be outside the voxel, as long as the ray hit from that direction)
# down (-Y) offset
execute if score #traverse_to dorklib.var matches 2 if score #edge_facing dorklib.var matches 0 run scoreboard players remove #p_y dorklib.var 1
# up (+Y) restrict
execute if score #traverse_to dorklib.var matches 2 if score #p_y dorklib.var matches 1024 unless score #edge_facing dorklib.var matches 1 run scoreboard players set #p_y dorklib.var 1023
# north (-Z) offset
execute if score #traverse_to dorklib.var matches 2 if score #edge_facing dorklib.var matches 2 run scoreboard players remove #p_z dorklib.var 1
# south (+Z) restrict
execute if score #traverse_to dorklib.var matches 2 if score #p_z dorklib.var matches 1024 unless score #edge_facing dorklib.var matches 3 run scoreboard players set #p_z dorklib.var 1023
# west (-X) offset
execute if score #traverse_to dorklib.var matches 2 if score #edge_facing dorklib.var matches 4 run scoreboard players remove #p_x dorklib.var 1
# east (+X) restrict
execute if score #traverse_to dorklib.var matches 2 if score #p_x dorklib.var matches 1024 unless score #edge_facing dorklib.var matches 5 run scoreboard players set #p_x dorklib.var 1023

execute store result storage dorklib:main functions."do:raycast/to_block".x double 0.0009765625 run scoreboard players get #p_x dorklib.var
execute store result storage dorklib:main functions."do:raycast/to_block".y double 0.0009765625 run scoreboard players get #p_y dorklib.var
execute store result storage dorklib:main functions."do:raycast/to_block".z double 0.0009765625 run scoreboard players get #p_z dorklib.var

function dorklib:impl/do/raycast/to_block/final_destination/edge with storage dorklib:main functions."do:raycast/to_block"
