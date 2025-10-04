data modify storage do:io output set value {Name:"minecraft:dead_tube_coral_fan",Properties:{waterlogged:"true"}}
execute if block ~ ~ ~ dead_tube_coral_fan[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
