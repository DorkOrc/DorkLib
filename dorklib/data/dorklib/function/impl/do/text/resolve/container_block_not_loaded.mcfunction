# resolve text component
loot replace entity @s contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{score:{name:"$text_component",objective:"dorklib.var"}}}]}]}]}
data modify storage do:io output set from entity @s item.components.minecraft:custom_name
scoreboard players reset $text_component dorklib.var

return 1
