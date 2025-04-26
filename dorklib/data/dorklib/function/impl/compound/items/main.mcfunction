# verify that the input is a compound
execute unless data storage do:io input{} run return run function dorklib:exception {args:{message:"Input is not a compound type"}}

# make a temporary copy of the compound (this will be destroyed)
data modify storage dorklib:main functions."do:compound/items".value set from storage do:io input
execute store result score #remaining_keys dorklib.var run data get storage dorklib:main functions."do:compound/items".value
execute if score #remaining_keys dorklib.var matches 0 run return run data modify storage do:io output set value []

# iterate through the characters to separate keys from values
data modify storage dorklib:main functions."do:compound/items".items set value []
function dorklib:impl/compound/items/loop_pairs

# output items
data modify storage do:io output set from storage dorklib:main functions."do:compound/items".items

return 1
