data modify storage do:io output set value {Name:"minecraft:magenta_bed",Properties:{facing:"north",occupied:"false",part:"foot"}}
execute if block ~ ~ ~ magenta_bed[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ magenta_bed[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ magenta_bed[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ magenta_bed[occupied=true] run data modify storage do:io output.Properties.occupied set value "true"
execute if block ~ ~ ~ magenta_bed[part=head] run data modify storage do:io output.Properties.part set value "head"
