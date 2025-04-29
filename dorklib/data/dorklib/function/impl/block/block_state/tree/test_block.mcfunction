data modify storage do:io output set value {Name:"minecraft:test_block",Properties:{"mode": "start"}}
execute if block ~ ~ ~ test_block[mode=log] run data modify storage do:io output.Properties.mode set value "log"
execute if block ~ ~ ~ test_block[mode=fail] run data modify storage do:io output.Properties.mode set value "fail"
execute if block ~ ~ ~ test_block[mode=accept] run data modify storage do:io output.Properties.mode set value "accept"
