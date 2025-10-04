data modify storage do:io output set value {Name:"minecraft:piston_head",Properties:{type:"normal",facing:"north",short:"false"}}
execute if block ~ ~ ~ piston_head[type=sticky] run data modify storage do:io output.Properties.type set value "sticky"
execute if block ~ ~ ~ piston_head[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ piston_head[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ piston_head[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ piston_head[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ piston_head[facing=down] run data modify storage do:io output.Properties.facing set value "down"
execute if block ~ ~ ~ piston_head[short=true] run data modify storage do:io output.Properties.short set value "true"
