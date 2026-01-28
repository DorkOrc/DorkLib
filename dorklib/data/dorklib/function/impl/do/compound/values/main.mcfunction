# verify that the input is a compound
execute unless data storage do:io input{} run return run function dorklib:exception {args:{message:"The input must be a compound"}}

# get items
function dorklib:impl/do/compound/items/main

# output only the values
data modify storage dorklib:main functions."do:compound/keys".keys set value []
data modify storage dorklib:main functions."do:compound/keys".keys append from storage do:io output[].value
data modify storage do:io output set from storage dorklib:main functions."do:compound/keys".keys

return 1
