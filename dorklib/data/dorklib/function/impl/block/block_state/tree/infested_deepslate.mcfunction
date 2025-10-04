data modify storage do:io output set value {Name:"minecraft:infested_deepslate",Properties:{axis:"y"}}
execute if block ~ ~ ~ infested_deepslate[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ infested_deepslate[axis=z] run data modify storage do:io output.Properties.axis set value "z"
