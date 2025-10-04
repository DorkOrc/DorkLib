data modify storage do:io output set value {Name:"minecraft:sweet_berry_bush",Properties:{age:"0"}}
execute if block ~ ~ ~ sweet_berry_bush[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ sweet_berry_bush[age=2] run data modify storage do:io output.Properties.age set value "2"
execute if block ~ ~ ~ sweet_berry_bush[age=3] run data modify storage do:io output.Properties.age set value "3"
