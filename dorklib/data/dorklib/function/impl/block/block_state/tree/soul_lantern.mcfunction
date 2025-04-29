data modify storage do:io output set value {Name:"minecraft:soul_lantern",Properties:{"hanging": "false", "waterlogged": "false"}}
execute if block ~ ~ ~ soul_lantern[hanging=true] run data modify storage do:io output.Properties.hanging set value "true"
execute if block ~ ~ ~ soul_lantern[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
