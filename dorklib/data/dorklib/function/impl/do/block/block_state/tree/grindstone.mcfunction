data modify storage do:io output set value {Name:"minecraft:grindstone",Properties:{face:"wall",facing:"north"}}
execute if block ~ ~ ~ grindstone[face=floor] run data modify storage do:io output.Properties.face set value "floor"
execute if block ~ ~ ~ grindstone[face=ceiling] run data modify storage do:io output.Properties.face set value "ceiling"
execute if block ~ ~ ~ grindstone[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ grindstone[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ grindstone[facing=east] run data modify storage do:io output.Properties.facing set value "east"
