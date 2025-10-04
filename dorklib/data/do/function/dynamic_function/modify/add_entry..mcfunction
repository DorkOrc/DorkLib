# arguments: args

$data modify storage do:io args set value $(args)
return run function do:dynamic_function/modify/add_entry
