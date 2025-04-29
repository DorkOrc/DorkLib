data modify storage do:io output set value {Name:"minecraft:smoker",Properties:{"facing": "north", "lit": "false"}}
execute if block ~ ~ ~ smoker[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ smoker[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ smoker[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ smoker[lit=true] run data modify storage do:io output.Properties.lit set value "true"
