data modify storage do:io output set value {Name:"minecraft:bamboo_fence",Properties:{"east": "false", "north": "false", "south": "false", "waterlogged": "false", "west": "false"}}
execute if block ~ ~ ~ bamboo_fence[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ bamboo_fence[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ bamboo_fence[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ bamboo_fence[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ bamboo_fence[west=true] run data modify storage do:io output.Properties.west set value "true"
