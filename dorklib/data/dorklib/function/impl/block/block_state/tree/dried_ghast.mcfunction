data modify storage do:io output set value {Name:"minecraft:dried_ghast",Properties:{"facing": "north", "hydration": "0", "waterlogged": "false"}}
execute if block ~ ~ ~ dried_ghast[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ dried_ghast[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ dried_ghast[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ dried_ghast[hydration=1] run data modify storage do:io output.Properties.hydration set value "1"
execute if block ~ ~ ~ dried_ghast[hydration=2] run data modify storage do:io output.Properties.hydration set value "2"
execute if block ~ ~ ~ dried_ghast[hydration=3] run data modify storage do:io output.Properties.hydration set value "3"
execute if block ~ ~ ~ dried_ghast[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
