data modify storage do:io output set value {Name:"minecraft:end_rod",Properties:{facing:"up"}}
execute if block ~ ~ ~ end_rod[facing=north] run data modify storage do:io output.Properties.facing set value "north"
execute if block ~ ~ ~ end_rod[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ end_rod[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ end_rod[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ end_rod[facing=down] run data modify storage do:io output.Properties.facing set value "down"
