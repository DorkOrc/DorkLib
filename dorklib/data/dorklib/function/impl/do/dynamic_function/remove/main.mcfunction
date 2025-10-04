# resolve and validate id
execute store success score #valid_id dorklib.var run function dorklib:util/decompose_namespaced_id {target:"storage do:io args.id"}
execute if score #valid_id dorklib.var matches 0 run return run function dorklib:exception {args:{message:"Invalid ID"}}
execute if data storage do:io args.id{dorklib:true} unless data storage do:io args{__dorklib__:true} run return run function dorklib:exception {args:{message:["The \"",{storage:"do:io",nbt:"args.id.resolved_id"},"\" namespace is reserved for internal use only"]}}
data modify storage dorklib:main functions."do:dynamic_function/remove".id set from storage do:io args.id.resolved_id

# Check existence
execute store success score #already_registered dorklib.var run function dorklib:impl/do/dynamic_function/remove/check_existence with storage dorklib:main functions."do:dynamic_function/remove"
execute if score #already_registered dorklib.var matches 0 run return run function dorklib:exception {args:{message:"A dynamic function with that ID is not registered"}}

# unregister dynamic function
function dorklib:impl/do/dynamic_function/remove/remove_from_registry with storage dorklib:main functions."do:dynamic_function/remove"

return 1
