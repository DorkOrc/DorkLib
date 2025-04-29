data modify storage do:io output set value {Name:"minecraft:cake",Properties:{"bites": "0"}}
execute if block ~ ~ ~ cake[bites=1] run data modify storage do:io output.Properties.bites set value "1"
execute if block ~ ~ ~ cake[bites=2] run data modify storage do:io output.Properties.bites set value "2"
execute if block ~ ~ ~ cake[bites=3] run data modify storage do:io output.Properties.bites set value "3"
execute if block ~ ~ ~ cake[bites=4] run data modify storage do:io output.Properties.bites set value "4"
execute if block ~ ~ ~ cake[bites=5] run data modify storage do:io output.Properties.bites set value "5"
execute if block ~ ~ ~ cake[bites=6] run data modify storage do:io output.Properties.bites set value "6"
