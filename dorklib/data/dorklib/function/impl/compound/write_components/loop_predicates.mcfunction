data modify storage do:io input set from storage dorklib:main functions."do:compound/write_components".items[-1].value
function do:nbt/write_snbt
data modify storage dorklib:main functions."do:compound/write_components".items[-1].value set from storage do:io output

data modify storage do:io input set value [{storage:"dorklib:main",nbt:'functions."do:compound/write_components".items[-1].key'},"~",{storage:"dorklib:main",nbt:'functions."do:compound/write_components".items[-1].value'}]
function do:text/resolve

data modify storage dorklib:main functions."do:compound/write_components".output_text_components append from storage do:io output
data remove storage dorklib:main functions."do:compound/write_components".items[-1]

execute if data storage dorklib:main functions."do:compound/write_components".items[-1] run function dorklib:impl/compound/write_components/loop
