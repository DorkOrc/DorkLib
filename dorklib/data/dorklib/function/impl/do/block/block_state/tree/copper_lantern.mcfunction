data modify storage do:io output set value {Name:"minecraft:copper_lantern",Properties:{hanging:"false",waterlogged:"false"}}
execute if block ~ ~ ~ copper_lantern[hanging=true] run data modify storage do:io output.Properties.hanging set value "true"
execute if block ~ ~ ~ copper_lantern[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
