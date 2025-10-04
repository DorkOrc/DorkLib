data modify storage do:io output set value {Name:"minecraft:jack_o_lantern",Properties:{facing:"north"}}
execute if block ~ ~ ~ jack_o_lantern[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ jack_o_lantern[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ jack_o_lantern[facing=east] run data modify storage do:io output.Properties.facing set value "east"
