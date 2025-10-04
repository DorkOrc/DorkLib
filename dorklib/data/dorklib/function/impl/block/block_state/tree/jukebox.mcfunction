data modify storage do:io output set value {Name:"minecraft:jukebox",Properties:{has_record:"false"}}
execute if block ~ ~ ~ jukebox[has_record=true] run data modify storage do:io output.Properties.has_record set value "true"
