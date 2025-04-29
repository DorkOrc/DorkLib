data modify storage do:io output set value {Name:"minecraft:sculk_shrieker",Properties:{"can_summon": "false", "shrieking": "false", "waterlogged": "false"}}
execute if block ~ ~ ~ sculk_shrieker[can_summon=true] run data modify storage do:io output.Properties.can_summon set value "true"
execute if block ~ ~ ~ sculk_shrieker[shrieking=true] run data modify storage do:io output.Properties.shrieking set value "true"
execute if block ~ ~ ~ sculk_shrieker[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
