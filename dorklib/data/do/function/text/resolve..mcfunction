# arguments: args

$data modify storage do:io args set value $(args)

# overwrite input if "text_component" argument is present
data modify storage do:io input set from storage do:io args.text_component
data remove storage do:io args.text_component

return run function do:text/resolve
