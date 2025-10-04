data modify storage do:io output set value {Name:"minecraft:bubble_column",Properties:{drag:"true"}}
execute if block ~ ~ ~ bubble_column[drag=false] run data modify storage do:io output.Properties.drag set value "false"
