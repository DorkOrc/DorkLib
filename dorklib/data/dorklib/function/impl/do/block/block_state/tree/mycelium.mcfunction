data modify storage do:io output set value {Name:"minecraft:mycelium",Properties:{snowy:"false"}}
execute if block ~ ~ ~ mycelium[snowy=true] run data modify storage do:io output.Properties.snowy set value "true"
