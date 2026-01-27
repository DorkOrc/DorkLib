# if the function is not executing as an entity, use a temporary marker
execute unless entity @s summon marker if function do:entity/remove run return run function dorklib:impl/do/str/escape/main

# 
data modify storage dorklib:main functions."do:str/escape".raw set value ""
data modify storage dorklib:main functions."do:str/escape".raw set string storage do:io input

execute in minecraft:overworld run loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"dorklib:main",nbt:'functions."do:str/escape".raw'}}]}]}]}

data modify storage dorklib:main functions."do:str/escape".pretty_printed set from block -30000000 0 1602 Items[0].components.minecraft:custom_name
data modify storage dorklib:main functions."do:str/escape".quote_type set from storage dorklib:main functions."do:str/escape".pretty_printed.extra[0]

execute if score #quote_type dorklib.var matches 1 if data storage dorklib:main functions."do:str/escape"{quote_type:"'"} in minecraft:overworld run return run function dorklib:impl/do/str/escape/force_double_quote with storage dorklib:main functions."do:str/escape".pretty_printed.extra[1]
execute if score #quote_type dorklib.var matches 2 if data storage dorklib:main functions."do:str/escape"{quote_type:'"'} in minecraft:overworld run return run function dorklib:impl/do/str/escape/force_single_quote with storage dorklib:main functions."do:str/escape".pretty_printed.extra[1]

data modify storage do:io output set from storage dorklib:main functions."do:str/escape".pretty_printed.extra[1].text

return 1
