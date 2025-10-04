# arguments: id, tree_group

$data modify storage dorklib:dynamic_function dynamic_functions."$(id)" set value {id: "$(id)", tree_group: $(tree_group), total_entries: 0, total_entries_upper_bound: 0, commands_per_entry: 1, entries: [], indexes: {name: {}}, map: {}}
$data modify storage dorklib:dynamic_function dynamic_functions."$(id)".map set from storage dorklib:constant empty_dynamic_function
$execute store result storage dorklib:dynamic_function dynamic_functions."$(id)".commands_per_entry int 1 run scoreboard players get #commands_per_entry dorklib.var
