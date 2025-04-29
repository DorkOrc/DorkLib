data modify storage do:io output set value {Name:"minecraft:frosted_ice",Properties:{"age": "0"}}
execute if block ~ ~ ~ frosted_ice[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ frosted_ice[age=2] run data modify storage do:io output.Properties.age set value "2"
execute if block ~ ~ ~ frosted_ice[age=3] run data modify storage do:io output.Properties.age set value "3"
