data modify storage do:io output set value {Name:"minecraft:turtle_egg",Properties:{"eggs": "1", "hatch": "0"}}
execute if block ~ ~ ~ turtle_egg[eggs=2] run data modify storage do:io output.Properties.eggs set value "2"
execute if block ~ ~ ~ turtle_egg[eggs=3] run data modify storage do:io output.Properties.eggs set value "3"
execute if block ~ ~ ~ turtle_egg[eggs=4] run data modify storage do:io output.Properties.eggs set value "4"
execute if block ~ ~ ~ turtle_egg[hatch=1] run data modify storage do:io output.Properties.hatch set value "1"
execute if block ~ ~ ~ turtle_egg[hatch=2] run data modify storage do:io output.Properties.hatch set value "2"
