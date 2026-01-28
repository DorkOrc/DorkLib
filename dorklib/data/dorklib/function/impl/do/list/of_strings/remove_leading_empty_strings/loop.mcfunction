data modify storage dorklib:main functions."do:list/of_strings/remove_leading_empty_strings".string set from storage do:io input[0]
execute unless data storage dorklib:main functions."do:list/of_strings/remove_leading_empty_strings"{string:""} run return 1

data remove storage do:io input[0]
execute if data storage do:io input[0] run function dorklib:impl/do/list/of_strings/remove_leading_empty_strings/loop
