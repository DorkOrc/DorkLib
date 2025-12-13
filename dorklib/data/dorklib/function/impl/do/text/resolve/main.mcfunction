# default output is an empty string
data modify storage do:io output set value ""

# if the function is not executing as an entity, remove `@s`-related text components and then resolve using a temporary entity
execute unless entity @s summon item_display if function do:entity/remove run return run function dorklib:impl/do/text/resolve/no_entity

# resolve text component using numberformat (to avoid losing execution context later)
scoreboard players display numberformat #text_component dorklib.var fixed {storage:"do:io",nbt:"input",interpret:true}

# if container block is not loaded, use a temporary entity
execute in minecraft:overworld unless loaded -30000000 0 1602 summon item_display if function do:entity/remove run return run function dorklib:impl/do/text/resolve/container_block_not_loaded

# else, use the container block
execute in minecraft:overworld run loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{score:{name:"#text_component",objective:"dorklib.var"}}}]}]}]}
execute in minecraft:overworld run data modify storage do:io output set from block -30000000 0 1602 Items[0].components.minecraft:custom_name
scoreboard players reset #text_component dorklib.var

return 1
