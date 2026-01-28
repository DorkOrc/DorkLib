execute unless entity @s summon marker if function do:entity/remove run return run function dorklib:impl/do/storage/remove/main

data modify storage dorklib:main functions."do:storage/remove".storage_id set from storage do:io input

data modify storage dorklib:main functions."do:storage/remove".dorklib_namespace_check set string storage do:io input 0 8
execute if data storage dorklib:main functions."do:storage/remove"{dorklib_namespace_check:"dorklib:"} run return run function dorklib:exception {args:{message:["The \"dorklib\" namespace is reserved for internal use only"]}}
execute if data storage dorklib:main functions."do:storage/remove"{dorklib_namespace_check:"dorklib."} run return run function dorklib:exception {args:{message:["The \"",{storage:"dorklib:main",nbt:'functions."do:storage/remove".storage_id',interpret:true},"\" namespace is reserved for internal use only"]}}

scoreboard players set #remaining_keys dorklib.var -1
function dorklib:impl/do/storage/remove/get_length with storage dorklib:main functions."do:storage/remove"
execute if score #remaining_keys dorklib.var matches -1 run return run function dorklib:exception {args:{message:"Invalid ID"}}

execute if score #remaining_keys dorklib.var matches 1.. in minecraft:overworld run function dorklib:impl/do/storage/remove/loop with storage dorklib:main functions."do:storage/remove"

return 1
