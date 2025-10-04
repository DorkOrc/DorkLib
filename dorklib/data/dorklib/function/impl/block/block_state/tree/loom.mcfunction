data modify storage do:io output set value {Name:"minecraft:loom",Properties:{facing:"north"}}
execute if block ~ ~ ~ loom[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ loom[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ loom[facing=east] run data modify storage do:io output.Properties.facing set value "east"
