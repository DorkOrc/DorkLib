$loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:item,name:stone,functions:[{function:set_name,entity:this,name:{storage:"$(storage_id)",nbt:""}}]}]}]}
data modify storage dorklib:main functions."do:storage/remove".key set from block -30000000 0 1602 Items[0].components.minecraft:custom_name.extra[1]

execute store success score #in_single_quotes dorklib.var if data storage dorklib:main functions."do:storage/remove".key{text:"'"}
data modify storage dorklib:main functions."do:storage/remove".key set from storage dorklib:main functions."do:storage/remove".key.extra[0].text
data modify storage dorklib:main functions."do:storage/remove".key set from storage dorklib:main functions."do:storage/remove".key.text

execute if score #in_single_quotes dorklib.var matches 0 run function dorklib:impl/do/storage/remove/delete_double_quoted_key with storage dorklib:main functions."do:storage/remove"
execute if score #in_single_quotes dorklib.var matches 1 run function dorklib:impl/do/storage/remove/delete_single_quoted_key with storage dorklib:main functions."do:storage/remove"

scoreboard players remove #remaining_keys dorklib.var 1
execute if score #remaining_keys dorklib.var matches 1.. run function dorklib:impl/do/storage/remove/loop with storage dorklib:main functions."do:storage/remove"
