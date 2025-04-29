data modify storage do:io output set value {Name:"minecraft:sniffer_egg",Properties:{"hatch": "0"}}
execute if block ~ ~ ~ sniffer_egg[hatch=1] run data modify storage do:io output.Properties.hatch set value "1"
execute if block ~ ~ ~ sniffer_egg[hatch=2] run data modify storage do:io output.Properties.hatch set value "2"
