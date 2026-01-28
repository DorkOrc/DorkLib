# resolve and validate id
execute store success score #valid_id dorklib.var run function dorklib:util/decompose_namespaced_id {target:"storage do:io args.id"}
execute if score #valid_id dorklib.var matches 0 run return run function dorklib:exception {args:{message:"The \"id\" argument must be a valid namespaced ID"}}
execute if data storage do:io args.id{dorklib:true} unless data storage do:io args{__dorklib__:true} run return run function dorklib:exception {args:{message:["The \"",{storage:"do:io",nbt:"args.id.namespace",interpret:true},"\" namespace is reserved for internal use only"]}}
data modify storage dorklib:main functions."do:dynamic_function/add".id set from storage do:io args.id.resolved_id

# read commands_per_entry
execute unless data storage do:io args.commands_per_entry run return run function dorklib:exception {args:{message:"Expected a \"commands_per_entry\" argument"}}
execute store result score #commands_per_entry dorklib.var run data get storage do:io args.commands_per_entry
execute unless score #commands_per_entry dorklib.var matches 1..4 run return run function dorklib:exception {args:{message:"The \"commands_per_entry\" argument must be at least 1 and at most 4"}}

# prevent duplicate ID
execute store success score #already_registered dorklib.var run function dorklib:impl/do/dynamic_function/add/check_duplicate with storage dorklib:main functions."do:dynamic_function/add"
execute if score #already_registered dorklib.var matches 1 run return run function dorklib:exception {args:{message:["A dynamic function with ID ",{storage:"dorklib:main",nbt:'functions."do:dynamic_function/add".id',interpret:true}," is already registered"]}}

# select tree group
execute store result storage dorklib:main functions."do:dynamic_function/add".tree_group int 1 run scoreboard players set #tree_group dorklib.var 0
function dorklib:impl/do/dynamic_function/add/select_tree_group with storage dorklib:main functions."do:dynamic_function/add"
execute unless score #tree_group dorklib.var matches 0.. run return run function dorklib:exception {args:{message:"The dynamic function registry limit (63) has been reached"}}
function dorklib:impl/do/dynamic_function/add/add_to_tree_group with storage dorklib:main functions."do:dynamic_function/add"

# register dynamic function
function dorklib:impl/do/dynamic_function/add/register_dynamic_function with storage dorklib:main functions."do:dynamic_function/add"

return 1
