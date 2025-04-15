# if the function is not executing as an entity, use a temporary marker
execute unless entity @s summon marker if function do:remove_entity run return run function dorklib:impl/str/escape/main

# 
data modify storage dorklib:main functions."do:str/escape".temp_list set value [""]
data modify storage dorklib:main functions."do:str/escape".temp_list[0] set string storage do:io input

loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"dorklib:main",nbt:'functions."do:str/escape".temp_list'}}]}]}]}

data modify storage dorklib:main functions."do:str/escape".string set from block -30000000 0 1602 Items[0].components.minecraft:custom_name
data modify storage dorklib:main functions."do:str/escape".quote_type set string storage dorklib:main functions."do:str/escape".string 1 2
data modify storage dorklib:main functions."do:str/escape".string set string storage dorklib:main functions."do:str/escape".string 2 -2

execute if score #quote_type dorklib.var matches 1 if data storage dorklib:main functions."do:str/escape"{quote_type:"'"} run function dorklib:impl/str/escape/force_double_quote with storage dorklib:main functions."do:str/escape"
execute if score #quote_type dorklib.var matches 2 if data storage dorklib:main functions."do:str/escape"{quote_type:'"'} run function dorklib:impl/str/escape/force_single_quote with storage dorklib:main functions."do:str/escape"

data modify storage do:io output set from storage dorklib:main functions."do:str/escape".string

return 1
