data modify storage do:io output set value {Name:"minecraft:bee_nest",Properties:{"facing": "north", "honey_level": "0"}}
execute if block ~ ~ ~ bee_nest[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ bee_nest[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ bee_nest[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ bee_nest[honey_level=1] run data modify storage do:io output.Properties.honey_level set value "1"
execute if block ~ ~ ~ bee_nest[honey_level=2] run data modify storage do:io output.Properties.honey_level set value "2"
execute if block ~ ~ ~ bee_nest[honey_level=3] run data modify storage do:io output.Properties.honey_level set value "3"
execute if block ~ ~ ~ bee_nest[honey_level=4] run data modify storage do:io output.Properties.honey_level set value "4"
execute if block ~ ~ ~ bee_nest[honey_level=5] run data modify storage do:io output.Properties.honey_level set value "5"
