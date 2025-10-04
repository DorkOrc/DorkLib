data modify storage do:io output set value {Name:"minecraft:cave_vines_plant",Properties:{berries:"false"}}
execute if block ~ ~ ~ cave_vines_plant[berries=true] run data modify storage do:io output.Properties.berries set value "true"
