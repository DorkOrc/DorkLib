data modify storage do:io output set value {Name:"minecraft:comparator",Properties:{facing:"north",mode:"compare",powered:"false"}}
execute if block ~ ~ ~ comparator[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ comparator[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ comparator[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ comparator[mode=subtract] run data modify storage do:io output.Properties.mode set value "subtract"
execute if block ~ ~ ~ comparator[powered=true] run data modify storage do:io output.Properties.powered set value "true"
