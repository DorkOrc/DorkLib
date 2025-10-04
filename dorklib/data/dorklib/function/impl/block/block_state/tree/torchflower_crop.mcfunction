data modify storage do:io output set value {Name:"minecraft:torchflower_crop",Properties:{age:"0"}}
execute if block ~ ~ ~ torchflower_crop[age=1] run data modify storage do:io output.Properties.age set value "1"
