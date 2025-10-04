# arguments: id, name, index

$data modify storage dorklib:dynamic_function dynamic_functions."$(id)".entries append value {index:$(index),name:"$(name)",commands:[]}
$execute if score #commands_per_entry dorklib.var matches 1.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".entries[-1].commands append from storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_1
$execute if score #commands_per_entry dorklib.var matches 2.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".entries[-1].commands append from storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_2
$execute if score #commands_per_entry dorklib.var matches 3.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".entries[-1].commands append from storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_3
$execute if score #commands_per_entry dorklib.var matches 4.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".entries[-1].commands append from storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_4

$data modify storage dorklib:dynamic_function dynamic_functions."$(id)".indexes.name."$(name)" set value $(index)

$execute if score #commands_per_entry dorklib.var matches 1.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_index_1)" set from storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_1
$execute if score #commands_per_entry dorklib.var matches 2.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_index_2)" set from storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_2
$execute if score #commands_per_entry dorklib.var matches 3.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_index_3)" set from storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_3
$execute if score #commands_per_entry dorklib.var matches 4.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_index_4)" set from storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_4

$execute store result storage dorklib:dynamic_function dynamic_functions."$(id)".total_entries int -1 run scoreboard players remove #total_entries dorklib.var 1
$execute store result storage dorklib:dynamic_function dynamic_functions."$(id)".total_entries_upper_bound int -32 run scoreboard players operation #total_entries dorklib.var /= #dynamic_function_bound_size dorklib.constant
