execute unless entity @s summon marker if function do:entity/remove run return run function dorklib:impl/do/storage/remove/main

data modify storage dorklib:main functions."do:storage/remove".storage_id set from storage do:io input

data modify storage dorklib:main functions."do:storage/remove".dorklib_namespace_check set string storage do:io input 0 8
execute if data storage dorklib:main functions."do:storage/remove"{dorklib_namespace_check:"dorklib:"} run return run function dorklib:exception {args:{message:["That namespace is reserved for internal use only"]}}
execute if data storage dorklib:main functions."do:storage/remove"{dorklib_namespace_check:"dorklib."} run return run function dorklib:exception {args:{message:["That namespace is reserved for internal use only"]}}

scoreboard players set #total_root_keys dorklib.var -1
function dorklib:impl/do/storage/remove/get_length with storage dorklib:main functions."do:storage/remove"
execute if score #total_root_keys dorklib.var matches -1 run return run function dorklib:exception {args:{message:"Invalid ID"}}

execute if score #total_root_keys dorklib.var matches 1.. run function dorklib:impl/do/storage/remove/loop_until_empty

return 1
