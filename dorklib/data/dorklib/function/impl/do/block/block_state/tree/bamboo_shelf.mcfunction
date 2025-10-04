data modify storage do:io output set value {Name:"minecraft:bamboo_shelf",Properties:{facing:"north",powered:"false",side_chain:"unconnected",waterlogged:"false"}}
execute if block ~ ~ ~ bamboo_shelf[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ bamboo_shelf[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ bamboo_shelf[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ bamboo_shelf[powered=true] run data modify storage do:io output.Properties.powered set value "true"
execute if block ~ ~ ~ bamboo_shelf[side_chain=right] run data modify storage do:io output.Properties.side_chain set value "right"
execute if block ~ ~ ~ bamboo_shelf[side_chain=center] run data modify storage do:io output.Properties.side_chain set value "center"
execute if block ~ ~ ~ bamboo_shelf[side_chain=left] run data modify storage do:io output.Properties.side_chain set value "left"
execute if block ~ ~ ~ bamboo_shelf[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
