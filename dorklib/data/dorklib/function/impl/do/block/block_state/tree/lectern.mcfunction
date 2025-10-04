data modify storage do:io output set value {Name:"minecraft:lectern",Properties:{facing:"north",has_book:"false",powered:"false"}}
execute if block ~ ~ ~ lectern[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ lectern[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ lectern[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ lectern[has_book=true] run data modify storage do:io output.Properties.has_book set value "true"
execute if block ~ ~ ~ lectern[powered=true] run data modify storage do:io output.Properties.powered set value "true"
