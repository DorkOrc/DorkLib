# arguments: index

$data modify storage do:io output append string storage do:io input[0] 0 $(index)

data modify storage dorklib:main functions."do:list/of_strings/limit_combined_length".last_char set string storage do:io output[-1] -1
function dorklib:impl/do/list/of_strings/limit_combined_length/check_for_surrogate_pair with storage dorklib:main functions."do:list/of_strings/limit_combined_length"
