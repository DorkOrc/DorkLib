data modify storage do:io output set value {Name:"minecraft:lever",Properties:{face:"wall",facing:"north",powered:"false"}}
execute if block ~ ~ ~ lever[face=floor] run data modify storage do:io output.Properties.face set value "floor"
execute if block ~ ~ ~ lever[face=ceiling] run data modify storage do:io output.Properties.face set value "ceiling"
execute if block ~ ~ ~ lever[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ lever[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ lever[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ lever[powered=true] run data modify storage do:io output.Properties.powered set value "true"
