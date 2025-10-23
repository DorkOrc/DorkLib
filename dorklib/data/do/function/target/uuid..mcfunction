# arguments: args

$data modify storage do:io args set value $(args)

# overwrite input if "uuid" argument is present
data modify storage do:io input set from storage do:io args.uuid
data remove storage do:io args.uuid
execute if data storage do:io args.uuid__from run function dorklib:impl/do/target/uuid/inline with storage do:io args

return run function do:target/uuid
