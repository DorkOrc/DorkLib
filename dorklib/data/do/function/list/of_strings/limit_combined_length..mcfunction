# arguments: args

$data modify storage do:io args set value $(args)
return run function do:list/of_strings/limit_combined_length
