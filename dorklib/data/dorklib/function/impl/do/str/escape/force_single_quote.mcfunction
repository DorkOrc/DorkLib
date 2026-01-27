$data modify storage dorklib:main functions."do:str/escape".raw set value "\"$(text)"
loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"dorklib:main",nbt:'functions."do:str/escape".raw'}}]}]}]}
data modify storage do:io output set string block -30000000 0 1602 Items[0].components.minecraft:custom_name.extra[1].text 1
return 1
