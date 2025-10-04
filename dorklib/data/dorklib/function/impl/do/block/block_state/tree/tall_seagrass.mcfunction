data modify storage do:io output set value {Name:"minecraft:tall_seagrass",Properties:{half:"lower"}}
execute if block ~ ~ ~ tall_seagrass[half=upper] run data modify storage do:io output.Properties.half set value "upper"
