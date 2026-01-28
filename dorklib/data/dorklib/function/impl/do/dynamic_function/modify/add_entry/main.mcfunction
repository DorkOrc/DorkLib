# resolve and validate id
execute store success score #valid_id dorklib.var run function dorklib:util/decompose_namespaced_id {target:"storage do:io args.id"}
execute if score #valid_id dorklib.var matches 0 run return run function dorklib:exception {args:{message:"The \"id\" argument must be a valid namespaced ID"}}
execute if data storage do:io args.id{dorklib:true} unless data storage do:io args{__dorklib__:true} run return run function dorklib:exception {args:{message:["The \"",{storage:"do:io",nbt:"args.id.namespace",interpret:true},"\" namespace is reserved for internal use only"]}}
data modify storage dorklib:main functions."do:dynamic_function/modify/add_entry".id set from storage do:io args.id.resolved_id

# Check existence
data modify storage dorklib:main functions."do:dynamic_function/modify/add_entry".name set from storage do:io args.name
scoreboard players set #valid_entry_name dorklib.var 0
execute store success score #already_registered dorklib.var run function dorklib:impl/do/dynamic_function/modify/add_entry/check_existence with storage dorklib:main functions."do:dynamic_function/modify/add_entry"
execute if score #valid_entry_name dorklib.var matches 0 run return run function dorklib:exception {args:{message:"Entry names must only contain a-z 0-9 . _ or -"}}
execute if score #already_registered dorklib.var matches 0 run return fail

# Check commands
execute if score #commands_per_entry dorklib.var matches 1.. if score #map_index_1 dorklib.var matches 1024.. run return run function dorklib:exception {args:{message:"This dynamic function is full"}}
execute if score #commands_per_entry dorklib.var matches 2.. if score #map_index_2 dorklib.var matches 1024.. run return run function dorklib:exception {args:{message:"This dynamic function is full"}}
execute if score #commands_per_entry dorklib.var matches 3.. if score #map_index_3 dorklib.var matches 1024.. run return run function dorklib:exception {args:{message:"This dynamic function is full"}}
execute if score #commands_per_entry dorklib.var matches 4.. if score #map_index_4 dorklib.var matches 1024.. run return run function dorklib:exception {args:{message:"This dynamic function is full"}}
execute if score #commands_per_entry dorklib.var matches 1.. unless data storage do:io args.commands[0] run return run function dorklib:exception {args:{message:["Not enough commands provided: This dynamic function requires ",{score:{name:"#commands_per_entry",objective:"dorklib.var"}}," commands per entry"]}}
execute if score #commands_per_entry dorklib.var matches 2.. unless data storage do:io args.commands[1] run return run function dorklib:exception {args:{message:["Not enough commands provided: This dynamic function requires ",{score:{name:"#commands_per_entry",objective:"dorklib.var"}}," commands per entry"]}}
execute if score #commands_per_entry dorklib.var matches 3.. unless data storage do:io args.commands[2] run return run function dorklib:exception {args:{message:["Not enough commands provided: This dynamic function requires ",{score:{name:"#commands_per_entry",objective:"dorklib.var"}}," commands per entry"]}}
execute if score #commands_per_entry dorklib.var matches 4.. unless data storage do:io args.commands[3] run return run function dorklib:exception {args:{message:["Not enough commands provided: This dynamic function requires ",{score:{name:"#commands_per_entry",objective:"dorklib.var"}}," commands per entry"]}}
execute if score #commands_per_entry dorklib.var matches ..1 if data storage do:io args.commands[1] run return run function dorklib:exception {args:{message:["Too many commands provided: This dynamic function requires ",{score:{name:"#commands_per_entry",objective:"dorklib.var"}}," commands per entry"]}}
execute if score #commands_per_entry dorklib.var matches ..2 if data storage do:io args.commands[2] run return run function dorklib:exception {args:{message:["Too many commands provided: This dynamic function requires ",{score:{name:"#commands_per_entry",objective:"dorklib.var"}}," commands per entry"]}}
execute if score #commands_per_entry dorklib.var matches ..3 if data storage do:io args.commands[3] run return run function dorklib:exception {args:{message:["Too many commands provided: This dynamic function requires ",{score:{name:"#commands_per_entry",objective:"dorklib.var"}}," commands per entry"]}}
data modify storage dorklib:main functions."do:dynamic_function/modify/add_entry" merge value {command_1:"return 1",command_2:"return 1",command_3:"return 1",command_4:"return 1"}
data modify storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_1 set from storage do:io args.commands[0]
data modify storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_2 set from storage do:io args.commands[1]
data modify storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_3 set from storage do:io args.commands[2]
data modify storage dorklib:main functions."do:dynamic_function/modify/add_entry".command_4 set from storage do:io args.commands[3]
execute store success score #can_load_commands dorklib.var run function dorklib:impl/do/dynamic_function/modify/add_entry/check_commands with storage dorklib:main functions."do:dynamic_function/modify/add_entry"
execute if score #can_load_commands dorklib.var matches 0 run return run function dorklib:exception {args:{message:"Failed to parse commands"}}

# add entry
function dorklib:impl/do/dynamic_function/modify/add_entry/add_entry with storage dorklib:main functions."do:dynamic_function/modify/add_entry"

return 1
