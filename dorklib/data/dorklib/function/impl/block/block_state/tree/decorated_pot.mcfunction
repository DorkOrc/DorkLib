data modify storage do:io output set value {Name:"minecraft:decorated_pot",Properties:{"cracked": "false", "facing": "north", "waterlogged": "false"}}
execute if block ~ ~ ~ decorated_pot[cracked=true] run data modify storage do:io output.Properties.cracked set value "true"
execute if block ~ ~ ~ decorated_pot[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ decorated_pot[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ decorated_pot[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ decorated_pot[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
