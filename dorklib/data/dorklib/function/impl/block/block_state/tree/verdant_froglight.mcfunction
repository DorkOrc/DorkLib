data modify storage do:io output set value {Name:"minecraft:verdant_froglight",Properties:{axis:"y"}}
execute if block ~ ~ ~ verdant_froglight[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ verdant_froglight[axis=z] run data modify storage do:io output.Properties.axis set value "z"
