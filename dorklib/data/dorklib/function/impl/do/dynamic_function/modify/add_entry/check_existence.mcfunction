# arguments: id, name

scoreboard players set #valid_entry_name dorklib.var 1

$execute unless data storage dorklib:dynamic_function dynamic_functions."$(id)" run return run function dorklib:exception {args:{message:"A dynamic function with that ID is not registered"}}
$execute if data storage dorklib:dynamic_function dynamic_functions."$(id)".indexes.name."$(name)" run return run function dorklib:exception {args:{message:"This dynamic function already has an entry with that name"}}

$execute store result score #map_index_1 dorklib.var store result storage dorklib:main functions."do:dynamic_function/modify/add_entry".index int 1 if data storage dorklib:dynamic_function dynamic_functions."$(id)".entries[]
$execute store result score #commands_per_entry dorklib.var run data get storage dorklib:dynamic_function dynamic_functions."$(id)".commands_per_entry

execute store result storage dorklib:main functions."do:dynamic_function/modify/add_entry".map_index_1 int 1 store result score #map_index_2 dorklib.var store result score #map_index_3 dorklib.var store result score #map_index_4 dorklib.var run scoreboard players operation #map_index_1 dorklib.var *= #commands_per_entry dorklib.var
execute store result storage dorklib:main functions."do:dynamic_function/modify/add_entry".map_index_2 int 1 run scoreboard players add #map_index_2 dorklib.var 1
execute store result storage dorklib:main functions."do:dynamic_function/modify/add_entry".map_index_3 int 1 run scoreboard players add #map_index_3 dorklib.var 2
execute store result storage dorklib:main functions."do:dynamic_function/modify/add_entry".map_index_4 int 1 run scoreboard players add #map_index_4 dorklib.var 3

$execute store result score #total_entries dorklib.var run data get storage dorklib:dynamic_function dynamic_functions."$(id)".total_entries -1

return 1
$execute if function :$(name) run function :$(name)
