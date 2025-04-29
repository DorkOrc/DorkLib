data modify storage do:io output set value {Name:"minecraft:snow",Properties:{"layers": "1"}}
execute if block ~ ~ ~ snow[layers=2] run data modify storage do:io output.Properties.layers set value "2"
execute if block ~ ~ ~ snow[layers=3] run data modify storage do:io output.Properties.layers set value "3"
execute if block ~ ~ ~ snow[layers=4] run data modify storage do:io output.Properties.layers set value "4"
execute if block ~ ~ ~ snow[layers=5] run data modify storage do:io output.Properties.layers set value "5"
execute if block ~ ~ ~ snow[layers=6] run data modify storage do:io output.Properties.layers set value "6"
execute if block ~ ~ ~ snow[layers=7] run data modify storage do:io output.Properties.layers set value "7"
execute if block ~ ~ ~ snow[layers=8] run data modify storage do:io output.Properties.layers set value "8"
