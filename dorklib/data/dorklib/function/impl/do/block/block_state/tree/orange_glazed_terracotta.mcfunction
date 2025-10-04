data modify storage do:io output set value {Name:"minecraft:orange_glazed_terracotta",Properties:{facing:"north"}}
execute if block ~ ~ ~ orange_glazed_terracotta[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ orange_glazed_terracotta[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ orange_glazed_terracotta[facing=east] run data modify storage do:io output.Properties.facing set value "east"
