data modify storage do:io input set from storage dorklib:main functions."do:nbt/compound/write_components".items[0].value
function do:nbt/write_snbt
data modify storage dorklib:main functions."do:nbt/compound/write_components".items[0].value set from storage do:io output

data modify storage do:io input set value [{storage:"dorklib:main",nbt:'functions."do:nbt/compound/write_components".items[0].key'},"=",{storage:"dorklib:main",nbt:'functions."do:nbt/compound/write_components".items[0].value'}]
function do:text/resolve

data modify storage dorklib:main functions."do:nbt/compound/write_components".components append from storage do:io output
data remove storage dorklib:main functions."do:nbt/compound/write_components".items[0]

execute if data storage dorklib:main functions."do:nbt/compound/write_components".items[0] run function dorklib:impl/nbt/write_components/loop
