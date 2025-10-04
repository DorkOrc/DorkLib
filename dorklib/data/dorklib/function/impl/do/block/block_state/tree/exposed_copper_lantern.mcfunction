data modify storage do:io output set value {Name:"minecraft:exposed_copper_lantern",Properties:{hanging:"false",waterlogged:"false"}}
execute if block ~ ~ ~ exposed_copper_lantern[hanging=true] run data modify storage do:io output.Properties.hanging set value "true"
execute if block ~ ~ ~ exposed_copper_lantern[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
