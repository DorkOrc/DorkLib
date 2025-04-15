# stringify the compound copy
data modify storage do:io input set value {storage:"dorklib:main",nbt:'functions."do:nbt/compound/items".value'}
function do:text/resolve
data modify storage dorklib:main functions."do:nbt/compound/items".string set string storage do:io output 1 -1
data modify storage dorklib:main functions."do:nbt/compound/items".temp_string set from storage dorklib:main functions."do:nbt/compound/items".string

data modify storage dorklib:main functions."do:nbt/compound/items".c set string storage dorklib:main functions."do:nbt/compound/items".temp_string 0 1
data modify storage dorklib:main functions."do:nbt/compound/items".temp_string set string storage dorklib:main functions."do:nbt/compound/items".temp_string 1
scoreboard players set #index dorklib.var 0

scoreboard players set #string_key dorklib.var 1
execute unless data storage dorklib:main functions."do:nbt/compound/items"{c:"'"} unless data storage dorklib:main functions."do:nbt/compound/items"{c:'"'} run scoreboard players set #string_key dorklib.var 0
execute if score #string_key dorklib.var matches 1 store success score #quote_type dorklib.var if data storage dorklib:main functions."do:nbt/compound/items"{c:'"'}
scoreboard players operation #in_string dorklib.var = #string_key dorklib.var

function dorklib:impl/nbt/compound/items/loop_characters

execute store result storage dorklib:main functions."do:nbt/compound/items".end int 1 run scoreboard players get #index dorklib.var
function dorklib:impl/nbt/compound/items/slice_out_key with storage dorklib:main functions."do:nbt/compound/items"

execute if score #string_key dorklib.var matches 0 run function dorklib:impl/nbt/compound/items/append_item_unquoted_key with storage dorklib:main functions."do:nbt/compound/items"
execute if score #string_key dorklib.var matches 1 run function dorklib:impl/nbt/compound/items/append_item_quoted_key with storage dorklib:main functions."do:nbt/compound/items"

execute store result score #remaining_keys dorklib.var run data get storage dorklib:main functions."do:nbt/compound/items".value
execute if score #remaining_keys dorklib.var matches 1.. run function dorklib:impl/nbt/compound/items/loop_pairs
