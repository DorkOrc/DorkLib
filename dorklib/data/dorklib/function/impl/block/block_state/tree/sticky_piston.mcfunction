data modify storage do:io output set value {Name:"minecraft:sticky_piston",Properties:{extended:"false",facing:"north"}}
execute if block ~ ~ ~ sticky_piston[extended=true] run data modify storage do:io output.Properties.extended set value "true"
execute if block ~ ~ ~ sticky_piston[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ sticky_piston[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ sticky_piston[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ sticky_piston[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ sticky_piston[facing=down] run data modify storage do:io output.Properties.facing set value "down"
