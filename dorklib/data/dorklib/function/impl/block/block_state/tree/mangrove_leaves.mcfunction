data modify storage do:io output set value {Name:"minecraft:mangrove_leaves",Properties:{distance:"7",persistent:"false",waterlogged:"false"}}
execute if block ~ ~ ~ mangrove_leaves[distance=1] run data modify storage do:io output.Properties.distance set value "1"
execute if block ~ ~ ~ mangrove_leaves[distance=2] run data modify storage do:io output.Properties.distance set value "2"
execute if block ~ ~ ~ mangrove_leaves[distance=3] run data modify storage do:io output.Properties.distance set value "3"
execute if block ~ ~ ~ mangrove_leaves[distance=4] run data modify storage do:io output.Properties.distance set value "4"
execute if block ~ ~ ~ mangrove_leaves[distance=5] run data modify storage do:io output.Properties.distance set value "5"
execute if block ~ ~ ~ mangrove_leaves[distance=6] run data modify storage do:io output.Properties.distance set value "6"
execute if block ~ ~ ~ mangrove_leaves[persistent=true] run data modify storage do:io output.Properties.persistent set value "true"
execute if block ~ ~ ~ mangrove_leaves[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
