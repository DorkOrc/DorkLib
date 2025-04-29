data modify storage do:io output set value {Name:"minecraft:fire_coral_fan",Properties:{"waterlogged": "true"}}
execute if block ~ ~ ~ fire_coral_fan[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
