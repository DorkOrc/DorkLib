# validate function argument
execute unless data storage do:io args.function run return run function dorklib:exception {args:{message:"Expected a \"function\" argument"}}
scoreboard players set #valid_function dorklib.var 0
function dorklib:impl/do/raycast/to_block/validate_function with storage do:io args
execute if score #valid_function dorklib.var matches 0 run return run function dorklib:exception {args:{message:"The \"function\" argument must be a valid namespaced ID"}}
data modify storage dorklib:main functions."do:raycast/to_block".function set from storage do:io args.function

execute store success score #require_hit dorklib.var if data storage do:io args{require_hit:true}

# validate location_condition argument
execute unless data storage do:io args.location_condition run data modify storage dorklib:main functions."do:raycast/to_block".location_condition set value {condition:"minecraft:inverted",term:{condition:"minecraft:location_check",predicate:{block:{blocks:["minecraft:air","minecraft:cave_air","minecraft:void_air"]}}}}
scoreboard players set #valid_predicate dorklib.var 0
execute if data storage do:io args.location_condition run function dorklib:impl/do/raycast/to_block/validate_location_condition with storage do:io args
execute if data storage do:io args.location_condition if score #valid_predicate dorklib.var matches 0 run return run function dorklib:exception {args:{message:"The \"location_condition\" argument must be a valid predicate ID or inlined predicate"}}
execute if score #valid_predicate dorklib.var matches 1 run data modify storage dorklib:main functions."do:raycast/to_block".location_condition set from storage do:io args.location_condition

# initialise vectors
execute summon marker run function dorklib:impl/do/raycast/to_block/get_vectors
scoreboard players set #edge_facing dorklib.var -1

# set max distance
scoreboard players set #exceeded_max_distance dorklib.var 0
scoreboard players set #max_distance dorklib.var 65536
scoreboard players set #max_iterations dorklib.var 111
execute if data storage do:io args.max_distance run function dorklib:impl/do/raycast/to_block/get_max_iterations
execute if score #max_distance dorklib.var matches ..0 run return run function dorklib:exception {args:{message:"The \"max_distance\" argument must be at least 0.0009765625"}}

# start voxel traversal
scoreboard players set #i dorklib.var 0
scoreboard players set #distance_travelled dorklib.var 0
execute align xyz positioned ~.5 ~.5 ~.5 run function dorklib:impl/do/raycast/to_block/loop with storage dorklib:main functions."do:raycast/to_block"

return 1
