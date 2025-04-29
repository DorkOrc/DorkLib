data modify storage do:io output set value {Name:"minecraft:tnt",Properties:{"unstable": "false"}}
execute if block ~ ~ ~ tnt[unstable=true] run data modify storage do:io output.Properties.unstable set value "true"
