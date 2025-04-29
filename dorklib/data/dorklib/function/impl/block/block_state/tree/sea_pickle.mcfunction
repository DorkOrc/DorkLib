data modify storage do:io output set value {Name:"minecraft:sea_pickle",Properties:{"pickles": "1", "waterlogged": "true"}}
execute if block ~ ~ ~ sea_pickle[pickles=2] run data modify storage do:io output.Properties.pickles set value "2"
execute if block ~ ~ ~ sea_pickle[pickles=3] run data modify storage do:io output.Properties.pickles set value "3"
execute if block ~ ~ ~ sea_pickle[pickles=4] run data modify storage do:io output.Properties.pickles set value "4"
execute if block ~ ~ ~ sea_pickle[waterlogged=false] run data modify storage do:io output.Properties.waterlogged set value "false"
