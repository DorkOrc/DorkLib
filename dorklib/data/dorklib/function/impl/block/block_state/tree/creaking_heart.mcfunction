data modify storage do:io output set value {Name:"minecraft:creaking_heart",Properties:{"axis": "y", "creaking_heart_state": "uprooted", "natural": "false"}}
execute if block ~ ~ ~ creaking_heart[axis=x] run data modify storage do:io output.Properties.axis set value "x"
execute if block ~ ~ ~ creaking_heart[axis=z] run data modify storage do:io output.Properties.axis set value "z"
execute if block ~ ~ ~ creaking_heart[creaking_heart_state=dormant] run data modify storage do:io output.Properties.creaking_heart_state set value "dormant"
execute if block ~ ~ ~ creaking_heart[creaking_heart_state=awake] run data modify storage do:io output.Properties.creaking_heart_state set value "awake"
execute if block ~ ~ ~ creaking_heart[natural=true] run data modify storage do:io output.Properties.natural set value "true"
