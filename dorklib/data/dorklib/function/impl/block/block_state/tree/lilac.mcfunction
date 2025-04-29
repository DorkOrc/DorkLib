data modify storage do:io output set value {Name:"minecraft:lilac",Properties:{"half": "lower"}}
execute if block ~ ~ ~ lilac[half=upper] run data modify storage do:io output.Properties.half set value "upper"
