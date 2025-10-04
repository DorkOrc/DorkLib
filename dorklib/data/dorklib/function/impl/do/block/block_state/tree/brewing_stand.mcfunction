data modify storage do:io output set value {Name:"minecraft:brewing_stand",Properties:{has_bottle_0:"false",has_bottle_1:"false",has_bottle_2:"false"}}
execute if block ~ ~ ~ brewing_stand[has_bottle_0=true] run data modify storage do:io output.Properties.has_bottle_0 set value "true"
execute if block ~ ~ ~ brewing_stand[has_bottle_1=true] run data modify storage do:io output.Properties.has_bottle_1 set value "true"
execute if block ~ ~ ~ brewing_stand[has_bottle_2=true] run data modify storage do:io output.Properties.has_bottle_2 set value "true"
