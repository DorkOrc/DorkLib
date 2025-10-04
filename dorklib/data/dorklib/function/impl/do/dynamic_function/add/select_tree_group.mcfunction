# arguments: tree_group

$execute store result score #tree_group_usage dorklib.var if data storage dorklib:dynamic_function tree_groups.$(tree_group).children[]
execute if score #tree_group_usage dorklib.var matches 0..6 run return 1

execute if score #tree_group dorklib.var >= #dynamic_function.total_tree_groups dorklib.global run return run scoreboard players reset #tree_group dorklib.var

execute store result storage dorklib:main functions."do:dynamic_function/add".tree_group int 1 run scoreboard players add #tree_group dorklib.var 1
function dorklib:impl/do/dynamic_function/add/select_tree_group with storage dorklib:main functions."do:dynamic_function/add"
