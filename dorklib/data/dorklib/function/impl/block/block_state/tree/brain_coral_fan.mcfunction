data modify storage do:io output set value {Name:"minecraft:brain_coral_fan",Properties:{"waterlogged": "true"}}
execute if block ~ ~ ~ brain_coral_fan[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
