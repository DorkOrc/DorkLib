data modify storage do:io output set value {Name:"minecraft:chorus_flower",Properties:{"age": "0"}}
execute if block ~ ~ ~ chorus_flower[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ chorus_flower[age=2] run data modify storage do:io output.Properties.age set value "2"
execute if block ~ ~ ~ chorus_flower[age=3] run data modify storage do:io output.Properties.age set value "3"
execute if block ~ ~ ~ chorus_flower[age=4] run data modify storage do:io output.Properties.age set value "4"
execute if block ~ ~ ~ chorus_flower[age=5] run data modify storage do:io output.Properties.age set value "5"
