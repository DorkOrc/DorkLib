data modify storage do:io output set value {Name:"minecraft:vine",Properties:{"east": "false", "north": "false", "south": "false", "up": "false", "west": "false"}}
execute if block ~ ~ ~ vine[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ vine[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ vine[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ vine[up=true] run data modify storage do:io output.Properties.up set value "true"
execute if block ~ ~ ~ vine[west=true] run data modify storage do:io output.Properties.west set value "true"
