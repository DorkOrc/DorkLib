data modify storage do:io output set value {Name:"minecraft:large_fern",Properties:{half:"lower"}}
execute if block ~ ~ ~ large_fern[half=upper] run data modify storage do:io output.Properties.half set value "upper"
