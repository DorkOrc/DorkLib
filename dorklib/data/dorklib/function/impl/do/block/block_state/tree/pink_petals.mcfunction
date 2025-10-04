data modify storage do:io output set value {Name:"minecraft:pink_petals",Properties:{facing:"north",flower_amount:"1"}}
execute if block ~ ~ ~ pink_petals[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ pink_petals[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ pink_petals[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ pink_petals[flower_amount=2] run data modify storage do:io output.Properties.flower_amount set value "2"
execute if block ~ ~ ~ pink_petals[flower_amount=3] run data modify storage do:io output.Properties.flower_amount set value "3"
execute if block ~ ~ ~ pink_petals[flower_amount=4] run data modify storage do:io output.Properties.flower_amount set value "4"
