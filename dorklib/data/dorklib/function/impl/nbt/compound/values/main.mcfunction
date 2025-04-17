# verify that the input is a compound
execute unless data storage do:io input{} run return run function dorklib:exception {args:{message:"Input is not a compound type"}}

# get items
function dorklib:impl/nbt/compound/items/main

# output only the values
data modify storage dorklib:main functions."do:nbt/compound/keys".keys set value []
data modify storage dorklib:main functions."do:nbt/compound/keys".keys append from storage do:io output[].value
data modify storage do:io output set from storage dorklib:main functions."do:nbt/compound/keys".keys

return 1
