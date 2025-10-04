# if the function is not executing as an entity, use a temporary marker
execute unless entity @s summon marker if function do:remove_entity run return run function dorklib:impl/do/text/join/main

# default output is an empty string
data modify storage do:io output set value ""

# if the input is empty or not a list, return an empty string
execute unless data storage do:io input[0] run return 1

# if the input only has a single element, return that element (stringified)
execute unless data storage do:io input[1] run return run data modify storage do:io output set string storage do:io input[0]

# otherwise, iteratively concatenate strings
data modify storage dorklib:main functions."do:str/join".substrings set from storage do:io input

data modify storage dorklib:main functions."do:str/join".separator set value ""
execute if data storage do:io args.separator unless data storage do:io args{separator:""} run function dorklib:impl/do/str/join/escape_separator

data modify storage do:io input set from storage dorklib:main functions."do:str/join".substrings[0]
data remove storage dorklib:main functions."do:str/join".substrings[0]
function do:str/escape/double_quote
function dorklib:impl/do/str/join/insert_single_quote with storage do:io

data modify storage dorklib:main functions."do:str/join".temp_list set value [""]
execute in minecraft:overworld run function dorklib:impl/do/str/join/loop

data modify storage do:io output set string storage dorklib:main functions."do:str/join".string 1
return 1
