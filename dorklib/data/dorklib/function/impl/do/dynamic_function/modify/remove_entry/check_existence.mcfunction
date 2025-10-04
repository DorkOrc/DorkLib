# arguments: id, name

scoreboard players set #valid_entry_name dorklib.var 1

$execute unless data storage dorklib:dynamic_function dynamic_functions."$(id)" run return run function dorklib:exception {args:{message:"A dynamic function with that ID is not registered"}}
$execute unless data storage dorklib:dynamic_function dynamic_functions."$(id)".indexes.name."$(name)" run return run function dorklib:exception {args:{message:"This dynamic function does not have an entry with that name"}}

$data modify storage dorklib:main functions."do:dynamic_function/modify/remove_entry".index set from storage dorklib:dynamic_function dynamic_functions."$(id)".indexes.name."$(name)"
$data modify storage dorklib:main functions."do:dynamic_function/modify/remove_entry".top_index set from storage dorklib:dynamic_function dynamic_functions."$(id)".entries[-1].index
$data modify storage dorklib:main functions."do:dynamic_function/modify/remove_entry".top_name set from storage dorklib:dynamic_function dynamic_functions."$(id)".entries[-1].name

$execute store result score #commands_per_entry dorklib.var run data get storage dorklib:dynamic_function dynamic_functions."$(id)".commands_per_entry

$execute store result score #total_entries dorklib.var run data get storage dorklib:dynamic_function dynamic_functions."$(id)".total_entries -1
$execute store result storage dorklib:dynamic_function dynamic_functions."$(id)".total_entries int -1 run scoreboard players add #total_entries dorklib.var 1
$execute store result storage dorklib:dynamic_function dynamic_functions."$(id)".total_entries_upper_bound int -32 run scoreboard players operation #total_entries dorklib.var /= #dynamic_function_bound_size dorklib.constant

return 1
$execute if function :$(name) run function :$(name)
