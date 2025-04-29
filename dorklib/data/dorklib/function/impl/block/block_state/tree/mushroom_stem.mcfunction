data modify storage do:io output set value {Name:"minecraft:mushroom_stem",Properties:{"down": "true", "east": "true", "north": "true", "south": "true", "up": "true", "west": "true"}}
execute if block ~ ~ ~ mushroom_stem[down=false] run data modify storage do:io output.Properties.down set value "false"
execute if block ~ ~ ~ mushroom_stem[east=false] run data modify storage do:io output.Properties.east set value "false"
execute if block ~ ~ ~ mushroom_stem[north=false] run data modify storage do:io output.Properties.north set value "false"
execute if block ~ ~ ~ mushroom_stem[south=false] run data modify storage do:io output.Properties.south set value "false"
execute if block ~ ~ ~ mushroom_stem[up=false] run data modify storage do:io output.Properties.up set value "false"
execute if block ~ ~ ~ mushroom_stem[west=false] run data modify storage do:io output.Properties.west set value "false"
