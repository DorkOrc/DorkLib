# arguments: id, tree_group

$data modify storage dorklib:dynamic_function tree_groups.$(tree_group).children append value {id:"$(id)"}
