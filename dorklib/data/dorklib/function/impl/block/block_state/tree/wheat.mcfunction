data modify storage do:io output set value {Name:"minecraft:wheat",Properties:{"age": "0"}}
execute if block ~ ~ ~ wheat[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ wheat[age=2] run data modify storage do:io output.Properties.age set value "2"
execute if block ~ ~ ~ wheat[age=3] run data modify storage do:io output.Properties.age set value "3"
execute if block ~ ~ ~ wheat[age=4] run data modify storage do:io output.Properties.age set value "4"
execute if block ~ ~ ~ wheat[age=5] run data modify storage do:io output.Properties.age set value "5"
execute if block ~ ~ ~ wheat[age=6] run data modify storage do:io output.Properties.age set value "6"
execute if block ~ ~ ~ wheat[age=7] run data modify storage do:io output.Properties.age set value "7"
