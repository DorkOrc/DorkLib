data modify storage do:io output set value {Name:"minecraft:nether_portal",Properties:{"axis": "x"}}
execute if block ~ ~ ~ nether_portal[axis=z] run data modify storage do:io output.Properties.axis set value "z"
