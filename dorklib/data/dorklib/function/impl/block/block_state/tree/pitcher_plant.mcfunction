data modify storage do:io output set value {Name:"minecraft:pitcher_plant",Properties:{"half": "lower"}}
execute if block ~ ~ ~ pitcher_plant[half=upper] run data modify storage do:io output.Properties.half set value "upper"
