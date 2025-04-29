data modify storage do:io output set value {Name:"minecraft:bell",Properties:{"attachment": "floor", "facing": "north", "powered": "false"}}
execute if block ~ ~ ~ bell[attachment=ceiling] run data modify storage do:io output.Properties.attachment set value "ceiling"
execute if block ~ ~ ~ bell[attachment=single_wall] run data modify storage do:io output.Properties.attachment set value "single_wall"
execute if block ~ ~ ~ bell[attachment=double_wall] run data modify storage do:io output.Properties.attachment set value "double_wall"
execute if block ~ ~ ~ bell[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ bell[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ bell[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ bell[powered=true] run data modify storage do:io output.Properties.powered set value "true"
