# replace all `@s`-related text components with empty strings
execute if data storage do:io input{} run function dorklib:impl/do/text/resolve/no_entity/compound {path:"input"}
execute if data storage do:io input[0] run function dorklib:impl/do/text/resolve/no_entity/list {path:"input"}

# resolve normally as this item_display entity
loot replace entity @s contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"do:io",nbt:"input",interpret:true}}]}]}]}
data modify storage do:io output set from entity @s item.components.minecraft:custom_name

return 1
