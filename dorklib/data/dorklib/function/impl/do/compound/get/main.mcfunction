# verify that the input is a compound
execute unless data storage do:io input{} run return run function dorklib:exception {args:{message:"Input is not a compound type"}}
data modify storage dorklib:main functions."do:compound/get".compound set from storage do:io input

# make a copy of the default value
data modify storage dorklib:main functions."do:compound/get".default set from storage do:io args.default

# verify that a key argument is given and that it is a string
execute unless data storage do:io args.key run return run function dorklib:exception {args:{message:"No \"key\" argument was provided"}}
data remove storage do:io input
data modify storage do:io input set string storage do:io args.key
execute store success score #not_string dorklib.var run data modify storage do:io input set from storage do:io args.key
execute if score #not_string dorklib.var matches 1 run return run function dorklib:exception {args:{message:"\"key\" argument should be a string"}}

# escape key
function do:str/escape/double_quote
data modify storage dorklib:main functions."do:compound/get".key set from storage do:io output

# get value
data remove storage do:io output
function dorklib:impl/do/compound/get/get_value with storage dorklib:main functions."do:compound/get"

# fail if no matching key was found and no default value was provided
execute unless data storage do:io output unless data storage dorklib:main functions."do:compound/get".default run return run function dorklib:exception {args:{message:"No matching key was found and no \"default\" argument was provided"}}

# output default
data modify storage do:io output set from storage dorklib:main functions."do:compound/get".default

return 1
