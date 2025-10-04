# if the function is not executing as an entity, use a temporary marker
execute unless entity @s summon marker if function do:remove_entity run return run function dorklib:impl/do/text/resolve/main
execute in minecraft:overworld unless loaded -30000000 0 1602 summon item_display if function do:remove_entity run return run function dorklib:impl/do/text/resolve/use_item_display

# default output is an empty string
data modify storage do:io output set value ""

# escape text component
execute in minecraft:overworld run loot replace block -30000000 0 1602 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"do:io",nbt:"input",interpret:true}}]}]}]}
execute in minecraft:overworld run data modify storage do:io output set from block -30000000 0 1602 Items[0].components.minecraft:custom_name

return 1
