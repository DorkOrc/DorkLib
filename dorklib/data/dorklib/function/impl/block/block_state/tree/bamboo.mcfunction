data modify storage do:io output set value {Name:"minecraft:bamboo",Properties:{"age": "0", "leaves": "none", "stage": "0"}}
execute if block ~ ~ ~ bamboo[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ bamboo[leaves=small] run data modify storage do:io output.Properties.leaves set value "small"
execute if block ~ ~ ~ bamboo[leaves=large] run data modify storage do:io output.Properties.leaves set value "large"
execute if block ~ ~ ~ bamboo[stage=1] run data modify storage do:io output.Properties.stage set value "1"
