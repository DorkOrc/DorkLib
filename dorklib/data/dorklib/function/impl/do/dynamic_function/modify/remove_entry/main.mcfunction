# resolve and validate id
execute store success score #valid_id dorklib.var run function dorklib:util/decompose_namespaced_id {target:"storage do:io args.id"}
execute if score #valid_id dorklib.var matches 0 run return run function dorklib:exception {args:{message:"Invalid ID"}}
execute if data storage do:io args.id{dorklib:true} unless data storage do:io args{__dorklib__:true} run return run function dorklib:exception {args:{message:["The \"",{storage:"do:io",nbt:"args.id.resolved_id",interpret:true},"\" namespace is reserved for internal use only"]}}
data modify storage dorklib:main functions."do:dynamic_function/modify/remove_entry".id set from storage do:io args.id.resolved_id

# Check existence
data modify storage dorklib:main functions."do:dynamic_function/modify/remove_entry".name set from storage do:io args.name
scoreboard players set #valid_entry_name dorklib.var 0
execute store success score #already_registered dorklib.var run function dorklib:impl/do/dynamic_function/modify/remove_entry/check_existence with storage dorklib:main functions."do:dynamic_function/modify/remove_entry"
execute if score #valid_entry_name dorklib.var matches 0 run return run function dorklib:exception {args:{message:"Invalid entry name: May only contain a-z0-9._-"}}
execute if score #already_registered dorklib.var matches 0 run return fail

# get map indices
execute if score #commands_per_entry dorklib.var matches 1 store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_index_1 int 1 store result score #map_index dorklib.var run data get storage dorklib:main functions."do:dynamic_function/modify/remove_entry".index 1
execute if score #commands_per_entry dorklib.var matches 2 store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_index_1 int 1 store result score #map_index dorklib.var run data get storage dorklib:main functions."do:dynamic_function/modify/remove_entry".index 2
execute if score #commands_per_entry dorklib.var matches 3 store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_index_1 int 1 store result score #map_index dorklib.var run data get storage dorklib:main functions."do:dynamic_function/modify/remove_entry".index 3
execute if score #commands_per_entry dorklib.var matches 4 store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_index_1 int 1 store result score #map_index dorklib.var run data get storage dorklib:main functions."do:dynamic_function/modify/remove_entry".index 4
execute store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_index_2 int 1 run scoreboard players add #map_index dorklib.var 1
execute store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_index_3 int 1 run scoreboard players add #map_index dorklib.var 1
execute store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_index_4 int 1 run scoreboard players add #map_index dorklib.var 1

execute if score #commands_per_entry dorklib.var matches 1 store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_top_index_1 int 1 store result score #map_top_index dorklib.var run data get storage dorklib:main functions."do:dynamic_function/modify/remove_entry".top_index 1
execute if score #commands_per_entry dorklib.var matches 2 store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_top_index_1 int 1 store result score #map_top_index dorklib.var run data get storage dorklib:main functions."do:dynamic_function/modify/remove_entry".top_index 2
execute if score #commands_per_entry dorklib.var matches 3 store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_top_index_1 int 1 store result score #map_top_index dorklib.var run data get storage dorklib:main functions."do:dynamic_function/modify/remove_entry".top_index 3
execute if score #commands_per_entry dorklib.var matches 4 store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_top_index_1 int 1 store result score #map_top_index dorklib.var run data get storage dorklib:main functions."do:dynamic_function/modify/remove_entry".top_index 4
execute store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_top_index_2 int 1 run scoreboard players add #map_top_index dorklib.var 1
execute store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_top_index_3 int 1 run scoreboard players add #map_top_index dorklib.var 1
execute store result storage dorklib:main functions."do:dynamic_function/modify/remove_entry".map_top_index_4 int 1 run scoreboard players add #map_top_index dorklib.var 1
# remove entry
function dorklib:impl/do/dynamic_function/modify/remove_entry/remove_entry with storage dorklib:main functions."do:dynamic_function/modify/remove_entry"

return 1
