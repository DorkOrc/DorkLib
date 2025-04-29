data modify storage do:io output set value {Name:"minecraft:beetroots",Properties:{"age": "0"}}
execute if block ~ ~ ~ beetroots[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ beetroots[age=2] run data modify storage do:io output.Properties.age set value "2"
execute if block ~ ~ ~ beetroots[age=3] run data modify storage do:io output.Properties.age set value "3"
