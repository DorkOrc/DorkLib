data modify storage do:io output set value {Name:"minecraft:pale_hanging_moss",Properties:{"tip": "true"}}
execute if block ~ ~ ~ pale_hanging_moss[tip=false] run data modify storage do:io output.Properties.tip set value "false"
