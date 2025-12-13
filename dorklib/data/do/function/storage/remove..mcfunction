# arguments: args

$data modify storage do:io args set value $(args)

# overwrite input if "storage" argument is present
data modify storage do:io input set from storage do:io args.storage
data remove storage do:io args.storage

return run function do:storage/remove
