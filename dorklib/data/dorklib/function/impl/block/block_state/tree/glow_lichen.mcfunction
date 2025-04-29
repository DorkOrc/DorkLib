data modify storage do:io output set value {Name:"minecraft:glow_lichen",Properties:{"down": "false", "east": "false", "north": "false", "south": "false", "up": "false", "waterlogged": "false", "west": "false"}}
execute if block ~ ~ ~ glow_lichen[down=true] run data modify storage do:io output.Properties.down set value "true"
execute if block ~ ~ ~ glow_lichen[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ glow_lichen[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ glow_lichen[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ glow_lichen[up=true] run data modify storage do:io output.Properties.up set value "true"
execute if block ~ ~ ~ glow_lichen[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ glow_lichen[west=true] run data modify storage do:io output.Properties.west set value "true"
