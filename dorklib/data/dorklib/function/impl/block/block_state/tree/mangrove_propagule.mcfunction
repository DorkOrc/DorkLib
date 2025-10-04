data modify storage do:io output set value {Name:"minecraft:mangrove_propagule",Properties:{age:"0",hanging:"false",stage:"0",waterlogged:"false"}}
execute if block ~ ~ ~ mangrove_propagule[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ mangrove_propagule[age=2] run data modify storage do:io output.Properties.age set value "2"
execute if block ~ ~ ~ mangrove_propagule[age=3] run data modify storage do:io output.Properties.age set value "3"
execute if block ~ ~ ~ mangrove_propagule[age=4] run data modify storage do:io output.Properties.age set value "4"
execute if block ~ ~ ~ mangrove_propagule[hanging=true] run data modify storage do:io output.Properties.hanging set value "true"
execute if block ~ ~ ~ mangrove_propagule[stage=1] run data modify storage do:io output.Properties.stage set value "1"
execute if block ~ ~ ~ mangrove_propagule[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
