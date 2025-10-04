data modify storage do:io output set value {Name:"minecraft:bubble_coral_fan",Properties:{waterlogged:"true"}}
execute if block ~ ~ ~ bubble_coral_fan[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
