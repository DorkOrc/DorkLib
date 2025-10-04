data modify storage do:io output set value {Name:"minecraft:farmland",Properties:{moisture:"0"}}
execute if block ~ ~ ~ farmland[moisture=1] run data modify storage do:io output.Properties.moisture set value "1"
execute if block ~ ~ ~ farmland[moisture=2] run data modify storage do:io output.Properties.moisture set value "2"
execute if block ~ ~ ~ farmland[moisture=3] run data modify storage do:io output.Properties.moisture set value "3"
execute if block ~ ~ ~ farmland[moisture=4] run data modify storage do:io output.Properties.moisture set value "4"
execute if block ~ ~ ~ farmland[moisture=5] run data modify storage do:io output.Properties.moisture set value "5"
execute if block ~ ~ ~ farmland[moisture=6] run data modify storage do:io output.Properties.moisture set value "6"
execute if block ~ ~ ~ farmland[moisture=7] run data modify storage do:io output.Properties.moisture set value "7"
