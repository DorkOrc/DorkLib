data modify storage do:io output set value {Name:"minecraft:podzol",Properties:{snowy:"false"}}
execute if block ~ ~ ~ podzol[snowy=true] run data modify storage do:io output.Properties.snowy set value "true"
