data modify storage do:io output set value {Name:"minecraft:brown_mushroom_block",Properties:{"down": "true", "east": "true", "north": "true", "south": "true", "up": "true", "west": "true"}}
execute if block ~ ~ ~ brown_mushroom_block[down=false] run data modify storage do:io output.Properties.down set value "false"
execute if block ~ ~ ~ brown_mushroom_block[east=false] run data modify storage do:io output.Properties.east set value "false"
execute if block ~ ~ ~ brown_mushroom_block[north=false] run data modify storage do:io output.Properties.north set value "false"
execute if block ~ ~ ~ brown_mushroom_block[south=false] run data modify storage do:io output.Properties.south set value "false"
execute if block ~ ~ ~ brown_mushroom_block[up=false] run data modify storage do:io output.Properties.up set value "false"
execute if block ~ ~ ~ brown_mushroom_block[west=false] run data modify storage do:io output.Properties.west set value "false"
