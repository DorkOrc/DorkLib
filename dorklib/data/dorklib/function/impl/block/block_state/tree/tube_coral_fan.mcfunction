data modify storage do:io output set value {Name:"minecraft:tube_coral_fan",Properties:{"waterlogged": "true"}}
execute if block ~ ~ ~ tube_coral_fan[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
