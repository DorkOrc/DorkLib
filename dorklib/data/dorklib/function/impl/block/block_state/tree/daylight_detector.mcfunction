data modify storage do:io output set value {Name:"minecraft:daylight_detector",Properties:{"inverted": "false", "power": "0"}}
execute if block ~ ~ ~ daylight_detector[inverted=true] run data modify storage do:io output.Properties.inverted set value "true"
execute if block ~ ~ ~ daylight_detector[power=1] run data modify storage do:io output.Properties.power set value "1"
execute if block ~ ~ ~ daylight_detector[power=2] run data modify storage do:io output.Properties.power set value "2"
execute if block ~ ~ ~ daylight_detector[power=3] run data modify storage do:io output.Properties.power set value "3"
execute if block ~ ~ ~ daylight_detector[power=4] run data modify storage do:io output.Properties.power set value "4"
execute if block ~ ~ ~ daylight_detector[power=5] run data modify storage do:io output.Properties.power set value "5"
execute if block ~ ~ ~ daylight_detector[power=6] run data modify storage do:io output.Properties.power set value "6"
execute if block ~ ~ ~ daylight_detector[power=7] run data modify storage do:io output.Properties.power set value "7"
execute if block ~ ~ ~ daylight_detector[power=8] run data modify storage do:io output.Properties.power set value "8"
execute if block ~ ~ ~ daylight_detector[power=9] run data modify storage do:io output.Properties.power set value "9"
execute if block ~ ~ ~ daylight_detector[power=10] run data modify storage do:io output.Properties.power set value "10"
execute if block ~ ~ ~ daylight_detector[power=11] run data modify storage do:io output.Properties.power set value "11"
execute if block ~ ~ ~ daylight_detector[power=12] run data modify storage do:io output.Properties.power set value "12"
execute if block ~ ~ ~ daylight_detector[power=13] run data modify storage do:io output.Properties.power set value "13"
execute if block ~ ~ ~ daylight_detector[power=14] run data modify storage do:io output.Properties.power set value "14"
execute if block ~ ~ ~ daylight_detector[power=15] run data modify storage do:io output.Properties.power set value "15"
