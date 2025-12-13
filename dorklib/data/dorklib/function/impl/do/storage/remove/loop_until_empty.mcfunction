# arguments: storage_id

data modify storage do:io input set value {nbt:""}
data modify storage do:io input.storage set from storage dorklib:main functions."do:storage/remove".storage_id
function do:text/resolve

scoreboard players set #index dorklib.var 3
data modify storage dorklib:main functions."do:storage/remove".index set value 3
function dorklib:impl/do/storage/remove/loop_chars with storage dorklib:main functions."do:storage/remove"

scoreboard players remove #total_root_keys dorklib.var 1
execute if score #total_root_keys dorklib.var matches 1.. run function dorklib:impl/do/storage/remove/loop_until_empty
