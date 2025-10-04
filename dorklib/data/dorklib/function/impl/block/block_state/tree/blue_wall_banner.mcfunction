data modify storage do:io output set value {Name:"minecraft:blue_wall_banner",Properties:{facing:"north"}}
execute if block ~ ~ ~ blue_wall_banner[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ blue_wall_banner[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ blue_wall_banner[facing=east] run data modify storage do:io output.Properties.facing set value "east"
