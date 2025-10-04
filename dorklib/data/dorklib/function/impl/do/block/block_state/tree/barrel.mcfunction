data modify storage do:io output set value {Name:"minecraft:barrel",Properties:{facing:"north",open:"false"}}
execute if block ~ ~ ~ barrel[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ barrel[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ barrel[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ barrel[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ barrel[facing=down] run data modify storage do:io output.Properties.facing set value "down"
execute if block ~ ~ ~ barrel[open=true] run data modify storage do:io output.Properties.open set value "true"
