data modify storage do:io output set value {Name:"minecraft:lantern",Properties:{"hanging": "false", "waterlogged": "false"}}
execute if block ~ ~ ~ lantern[hanging=true] run data modify storage do:io output.Properties.hanging set value "true"
execute if block ~ ~ ~ lantern[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
