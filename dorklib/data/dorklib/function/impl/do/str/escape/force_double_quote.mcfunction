$data modify storage dorklib:main functions."do:str/escape".temp_list set value ['\'$(string)']
loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"dorklib:main",nbt:'functions."do:str/escape".temp_list'}}]}]}]}
data modify storage dorklib:main functions."do:str/escape".string set string block -30000000 0 1602 Items[0].components.minecraft:custom_name 3 -2
