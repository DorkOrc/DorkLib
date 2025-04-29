data modify storage do:io output set value {Name:"minecraft:powered_rail",Properties:{"powered": "false", "shape": "north_south", "waterlogged": "false"}}
execute if block ~ ~ ~ powered_rail[powered=true] run data modify storage do:io output.Properties.powered set value "true"
execute if block ~ ~ ~ powered_rail[shape=east_west] run data modify storage do:io output.Properties.shape set value "east_west"
execute if block ~ ~ ~ powered_rail[shape=ascending_east] run data modify storage do:io output.Properties.shape set value "ascending_east"
execute if block ~ ~ ~ powered_rail[shape=ascending_west] run data modify storage do:io output.Properties.shape set value "ascending_west"
execute if block ~ ~ ~ powered_rail[shape=ascending_north] run data modify storage do:io output.Properties.shape set value "ascending_north"
execute if block ~ ~ ~ powered_rail[shape=ascending_south] run data modify storage do:io output.Properties.shape set value "ascending_south"
execute if block ~ ~ ~ powered_rail[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
