# default output is an empty string
data modify storage do:io output set value ""

# escape text component
loot replace entity @s contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"do:io",nbt:"input",interpret:true}}]}]}]}
data modify storage do:io output set from entity @s item.components.minecraft:custom_name

return 1
