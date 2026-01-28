# arguments: args

$data modify storage do:io args set value $(args)

# overwrite input if "id" argument is present
data modify storage do:io input set from storage do:io args.id
data remove storage do:io args.id

return run function do:summon/passenger
