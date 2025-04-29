data modify storage do:io output set value {Name:"minecraft:end_portal_frame",Properties:{"eye": "false", "facing": "north"}}
execute if block ~ ~ ~ end_portal_frame[eye=true] run data modify storage do:io output.Properties.eye set value "true"
execute if block ~ ~ ~ end_portal_frame[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ end_portal_frame[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ end_portal_frame[facing=east] run data modify storage do:io output.Properties.facing set value "east"
