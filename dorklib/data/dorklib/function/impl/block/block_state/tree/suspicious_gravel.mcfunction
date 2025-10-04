data modify storage do:io output set value {Name:"minecraft:suspicious_gravel",Properties:{dusted:"0"}}
execute if block ~ ~ ~ suspicious_gravel[dusted=1] run data modify storage do:io output.Properties.dusted set value "1"
execute if block ~ ~ ~ suspicious_gravel[dusted=2] run data modify storage do:io output.Properties.dusted set value "2"
execute if block ~ ~ ~ suspicious_gravel[dusted=3] run data modify storage do:io output.Properties.dusted set value "3"
