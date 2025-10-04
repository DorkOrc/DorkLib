data modify storage do:io output set value {Name:"minecraft:rose_bush",Properties:{half:"lower"}}
execute if block ~ ~ ~ rose_bush[half=upper] run data modify storage do:io output.Properties.half set value "upper"
