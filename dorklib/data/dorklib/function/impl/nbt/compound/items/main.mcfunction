# verify that the input is a compound
execute unless data storage do:io input{} run return run function dorklib:exception {args:{message:"Input is not a compound type"}}

# make a temporary copy of the compound (this will be destroyed)
data modify storage dorklib:main functions."do:nbt/compound/items".value set from storage do:io input

# iterate through the characters to separate keys from values
data modify storage dorklib:main functions."do:nbt/compound/items".items set value []
function dorklib:impl/nbt/compound/items/loop_pairs

# output items
data modify storage do:io output set from storage dorklib:main functions."do:nbt/compound/items".items

return 1
