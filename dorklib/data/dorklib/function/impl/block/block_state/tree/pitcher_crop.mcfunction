data modify storage do:io output set value {Name:"minecraft:pitcher_crop",Properties:{age:"0",half:"lower"}}
execute if block ~ ~ ~ pitcher_crop[age=1] run data modify storage do:io output.Properties.age set value "1"
execute if block ~ ~ ~ pitcher_crop[age=2] run data modify storage do:io output.Properties.age set value "2"
execute if block ~ ~ ~ pitcher_crop[age=3] run data modify storage do:io output.Properties.age set value "3"
execute if block ~ ~ ~ pitcher_crop[age=4] run data modify storage do:io output.Properties.age set value "4"
execute if block ~ ~ ~ pitcher_crop[half=upper] run data modify storage do:io output.Properties.half set value "upper"
