data modify storage do:io output set value {Name:"minecraft:blast_furnace",Properties:{"facing": "north", "lit": "false"}}
execute if block ~ ~ ~ blast_furnace[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ blast_furnace[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ blast_furnace[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ blast_furnace[lit=true] run data modify storage do:io output.Properties.lit set value "true"
