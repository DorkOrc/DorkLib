data modify storage do:io output set value {Name:"minecraft:tripwire_hook",Properties:{attached:"false",facing:"north",powered:"false"}}
execute if block ~ ~ ~ tripwire_hook[attached=true] run data modify storage do:io output.Properties.attached set value "true"
execute if block ~ ~ ~ tripwire_hook[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ tripwire_hook[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ tripwire_hook[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ tripwire_hook[powered=true] run data modify storage do:io output.Properties.powered set value "true"
