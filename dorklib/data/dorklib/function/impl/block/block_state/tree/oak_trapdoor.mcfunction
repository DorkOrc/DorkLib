data modify storage do:io output set value {Name:"minecraft:oak_trapdoor",Properties:{facing:"north",half:"bottom",open:"false",powered:"false",waterlogged:"false"}}
execute if block ~ ~ ~ oak_trapdoor[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ oak_trapdoor[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ oak_trapdoor[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ oak_trapdoor[half=top] run data modify storage do:io output.Properties.half set value "top"
execute if block ~ ~ ~ oak_trapdoor[open=true] run data modify storage do:io output.Properties.open set value "true"
execute if block ~ ~ ~ oak_trapdoor[powered=true] run data modify storage do:io output.Properties.powered set value "true"
execute if block ~ ~ ~ oak_trapdoor[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
