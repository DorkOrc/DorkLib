data modify storage do:io output set value {Name:"minecraft:repeater",Properties:{delay:"1",facing:"north",locked:"false",powered:"false"}}
execute if block ~ ~ ~ repeater[delay=2] run data modify storage do:io output.Properties.delay set value "2"
execute if block ~ ~ ~ repeater[delay=3] run data modify storage do:io output.Properties.delay set value "3"
execute if block ~ ~ ~ repeater[delay=4] run data modify storage do:io output.Properties.delay set value "4"
execute if block ~ ~ ~ repeater[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ repeater[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ repeater[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ repeater[locked=true] run data modify storage do:io output.Properties.locked set value "true"
execute if block ~ ~ ~ repeater[powered=true] run data modify storage do:io output.Properties.powered set value "true"
