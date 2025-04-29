data modify storage do:io output set value {Name:"minecraft:chipped_anvil",Properties:{"facing": "north"}}
execute if block ~ ~ ~ chipped_anvil[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ chipped_anvil[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ chipped_anvil[facing=east] run data modify storage do:io output.Properties.facing set value "east"
