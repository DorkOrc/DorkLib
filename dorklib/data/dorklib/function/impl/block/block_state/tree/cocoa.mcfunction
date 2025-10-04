data modify storage do:io output set value {Name:"minecraft:cocoa",Properties:{age:"0",facing:"north"}}
execute if block ~ ~ ~ cocoa[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ cocoa[age=2] run data modify storage do:io output.Properties.age set value "2"
execute if block ~ ~ ~ cocoa[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ cocoa[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ cocoa[facing=east] run data modify storage do:io output.Properties.facing set value "east"
