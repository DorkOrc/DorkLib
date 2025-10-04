data modify storage do:io output set value {Name:"minecraft:composter",Properties:{level:"0"}}
execute if block ~ ~ ~ composter[level=1] run data modify storage do:io output.Properties.level set value "1"
execute if block ~ ~ ~ composter[level=2] run data modify storage do:io output.Properties.level set value "2"
execute if block ~ ~ ~ composter[level=3] run data modify storage do:io output.Properties.level set value "3"
execute if block ~ ~ ~ composter[level=4] run data modify storage do:io output.Properties.level set value "4"
execute if block ~ ~ ~ composter[level=5] run data modify storage do:io output.Properties.level set value "5"
execute if block ~ ~ ~ composter[level=6] run data modify storage do:io output.Properties.level set value "6"
execute if block ~ ~ ~ composter[level=7] run data modify storage do:io output.Properties.level set value "7"
execute if block ~ ~ ~ composter[level=8] run data modify storage do:io output.Properties.level set value "8"
