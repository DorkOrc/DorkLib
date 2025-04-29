data modify storage do:io output set value {Name:"minecraft:quartz_pillar",Properties:{"axis": "y"}}
execute if block ~ ~ ~ quartz_pillar[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ quartz_pillar[axis=z] run data modify storage do:io output.Properties.axis set value "z"
