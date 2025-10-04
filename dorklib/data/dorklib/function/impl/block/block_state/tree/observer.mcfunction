data modify storage do:io output set value {Name:"minecraft:observer",Properties:{facing:"south",powered:"false"}}
execute if block ~ ~ ~ observer[facing=north] run data modify storage do:io output.Properties.facing set value "north"
execute if block ~ ~ ~ observer[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ observer[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ observer[facing=up] run data modify storage do:io output.Properties.facing set value "up"
execute if block ~ ~ ~ observer[facing=down] run data modify storage do:io output.Properties.facing set value "down"
execute if block ~ ~ ~ observer[powered=true] run data modify storage do:io output.Properties.powered set value "true"
