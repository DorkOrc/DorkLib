execute unless data storage do:io input{} run return run function dorklib:exception {args:{message:"Input is not a compound"}}

# get compound items
function do:compound/items
data modify storage dorklib:main functions."do:compound/write_components".items set from storage do:io output

# get output text components
data modify storage dorklib:main functions."do:compound/write_components".components set value []
function dorklib:impl/nbt/write_components/loop

# flatten result
data modify storage do:io input set value ["[",{storage:"dorklib:main",nbt:'functions."do:compound/write_components".components[]',interpret:true,separator:","},"]"]
function do:text/flatten

return 1
