data modify storage do:io output set value {Name:"minecraft:sculk_catalyst",Properties:{bloom:"false"}}
execute if block ~ ~ ~ sculk_catalyst[bloom=true] run data modify storage do:io output.Properties.bloom set value "true"
