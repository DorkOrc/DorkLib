data modify storage do:io output set value {Name:"minecraft:iron_bars",Properties:{"east": "false", "north": "false", "south": "false", "waterlogged": "false", "west": "false"}}
execute if block ~ ~ ~ iron_bars[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ iron_bars[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ iron_bars[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ iron_bars[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ iron_bars[west=true] run data modify storage do:io output.Properties.west set value "true"
