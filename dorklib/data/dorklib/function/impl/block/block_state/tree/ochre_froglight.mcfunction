data modify storage do:io output set value {Name:"minecraft:ochre_froglight",Properties:{"axis": "y"}}
execute if block ~ ~ ~ ochre_froglight[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ ochre_froglight[axis=z] run data modify storage do:io output.Properties.axis set value "z"
