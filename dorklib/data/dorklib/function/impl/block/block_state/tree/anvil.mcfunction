data modify storage do:io output set value {Name:"minecraft:anvil",Properties:{"facing": "north"}}
execute if block ~ ~ ~ anvil[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ anvil[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ anvil[facing=east] run data modify storage do:io output.Properties.facing set value "east"
