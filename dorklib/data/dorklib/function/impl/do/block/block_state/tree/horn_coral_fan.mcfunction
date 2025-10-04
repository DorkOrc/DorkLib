data modify storage do:io output set value {Name:"minecraft:horn_coral_fan",Properties:{waterlogged:"true"}}
execute if block ~ ~ ~ horn_coral_fan[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
