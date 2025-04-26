data modify storage do:io input set from storage dorklib:main functions."do:compound/write_components".args.predicates
function do:compound/items
data modify storage dorklib:main functions."do:compound/write_components".items set from storage do:io output
execute if data storage dorklib:main functions."do:compound/write_components".items run function dorklib:impl/compound/write_components/loop_predicates
