# arguments: id, name, index, top_index, top_name, map_index_1, map_index_2, map_index_3, map_index_4, map_top_index_1, map_top_index_2, map_top_index_3, map_top_index_4

$data modify storage dorklib:dynamic_function dynamic_functions."$(id)".entries[$(index)] set from storage dorklib:dynamic_function dynamic_functions."$(id)".entries[$(top_index)]
$data modify storage dorklib:dynamic_function dynamic_functions."$(id)".entries[$(index)].index set value $(index)
$data remove storage dorklib:dynamic_function dynamic_functions."$(id)".entries[$(top_index)]

$data modify storage dorklib:dynamic_function dynamic_functions."$(id)".indexes.name."$(top_name)" set value $(index)
$data remove storage dorklib:dynamic_function dynamic_functions."$(id)".indexes.name."$(name)"

$execute if score #commands_per_entry dorklib.var matches 1.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_index_1)" set from storage dorklib:dynamic_function dynamic_functions."$(id)".entries[$(index)].commands[0]
$execute if score #commands_per_entry dorklib.var matches 2.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_index_2)" set from storage dorklib:dynamic_function dynamic_functions."$(id)".entries[$(index)].commands[1]
$execute if score #commands_per_entry dorklib.var matches 3.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_index_3)" set from storage dorklib:dynamic_function dynamic_functions."$(id)".entries[$(index)].commands[2]
$execute if score #commands_per_entry dorklib.var matches 4.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_index_4)" set from storage dorklib:dynamic_function dynamic_functions."$(id)".entries[$(index)].commands[3]
$execute if score #commands_per_entry dorklib.var matches 1.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_top_index_1)" set value "return 1"
$execute if score #commands_per_entry dorklib.var matches 2.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_top_index_2)" set value "return 1"
$execute if score #commands_per_entry dorklib.var matches 3.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_top_index_3)" set value "return 1"
$execute if score #commands_per_entry dorklib.var matches 4.. run data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map."$(map_top_index_4)" set value "return 1"
