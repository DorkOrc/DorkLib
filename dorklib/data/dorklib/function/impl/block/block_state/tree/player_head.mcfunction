data modify storage do:io output set value {Name:"minecraft:player_head",Properties:{"powered": "false", "rotation": "0"}}
execute if block ~ ~ ~ player_head[powered=true] run data modify storage do:io output.Properties.powered set value "true"
execute if block ~ ~ ~ player_head[rotation=1] run data modify storage do:io output.Properties.rotation set value "1"
execute if block ~ ~ ~ player_head[rotation=2] run data modify storage do:io output.Properties.rotation set value "2"
execute if block ~ ~ ~ player_head[rotation=3] run data modify storage do:io output.Properties.rotation set value "3"
execute if block ~ ~ ~ player_head[rotation=4] run data modify storage do:io output.Properties.rotation set value "4"
execute if block ~ ~ ~ player_head[rotation=5] run data modify storage do:io output.Properties.rotation set value "5"
execute if block ~ ~ ~ player_head[rotation=6] run data modify storage do:io output.Properties.rotation set value "6"
execute if block ~ ~ ~ player_head[rotation=7] run data modify storage do:io output.Properties.rotation set value "7"
execute if block ~ ~ ~ player_head[rotation=8] run data modify storage do:io output.Properties.rotation set value "8"
execute if block ~ ~ ~ player_head[rotation=9] run data modify storage do:io output.Properties.rotation set value "9"
execute if block ~ ~ ~ player_head[rotation=10] run data modify storage do:io output.Properties.rotation set value "10"
execute if block ~ ~ ~ player_head[rotation=11] run data modify storage do:io output.Properties.rotation set value "11"
execute if block ~ ~ ~ player_head[rotation=12] run data modify storage do:io output.Properties.rotation set value "12"
execute if block ~ ~ ~ player_head[rotation=13] run data modify storage do:io output.Properties.rotation set value "13"
execute if block ~ ~ ~ player_head[rotation=14] run data modify storage do:io output.Properties.rotation set value "14"
execute if block ~ ~ ~ player_head[rotation=15] run data modify storage do:io output.Properties.rotation set value "15"
