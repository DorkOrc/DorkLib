data modify storage do:io output set value {Name:"minecraft:dark_oak_button",Properties:{face:"wall",facing:"north",powered:"false"}}
execute if block ~ ~ ~ dark_oak_button[face=floor] run data modify storage do:io output.Properties.face set value "floor"
execute if block ~ ~ ~ dark_oak_button[face=ceiling] run data modify storage do:io output.Properties.face set value "ceiling"
execute if block ~ ~ ~ dark_oak_button[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ dark_oak_button[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ dark_oak_button[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ dark_oak_button[powered=true] run data modify storage do:io output.Properties.powered set value "true"
