loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"dorklib:main",nbt:'functions."do:compound/items".value'}}]}]}]}
data modify storage dorklib:main functions."do:compound/items".key set from block -30000000 0 1602 Items[0].components.minecraft:custom_name.extra[1]

execute store success score #in_single_quotes dorklib.var if data storage dorklib:main functions."do:compound/items".key{text:"'"}
data modify storage dorklib:main functions."do:compound/items".key set from storage dorklib:main functions."do:compound/items".key.extra[0].text
data modify storage dorklib:main functions."do:compound/items".key set from storage dorklib:main functions."do:compound/items".key.text

execute if score #in_single_quotes dorklib.var matches 0 run function dorklib:impl/do/compound/items/append_item_double_quoted_key with storage dorklib:main functions."do:compound/items"
execute if score #in_single_quotes dorklib.var matches 1 run function dorklib:impl/do/compound/items/append_item_single_quoted_key with storage dorklib:main functions."do:compound/items"

scoreboard players remove #remaining_keys dorklib.var 1
execute if score #remaining_keys dorklib.var matches 1.. run function dorklib:impl/do/compound/items/loop
