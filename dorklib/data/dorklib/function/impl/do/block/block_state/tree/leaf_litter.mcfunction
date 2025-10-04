data modify storage do:io output set value {Name:"minecraft:leaf_litter",Properties:{facing:"north",segment_amount:"1"}}
execute if block ~ ~ ~ leaf_litter[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ leaf_litter[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ leaf_litter[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ leaf_litter[segment_amount=2] run data modify storage do:io output.Properties.segment_amount set value "2"
execute if block ~ ~ ~ leaf_litter[segment_amount=3] run data modify storage do:io output.Properties.segment_amount set value "3"
execute if block ~ ~ ~ leaf_litter[segment_amount=4] run data modify storage do:io output.Properties.segment_amount set value "4"
