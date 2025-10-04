data modify storage do:io input set value {storage:"dorklib:main",nbt:'functions."do:compound/write_components".args.components[]',separator:","}
function do:text/resolve
data modify storage dorklib:main functions."do:compound/write_components".output_text_components append from storage do:io output
