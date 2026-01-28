execute store result score #length dorklib.var run data get storage do:io input[0]
scoreboard players operation #length_left dorklib.var -= #length dorklib.var

execute if score #length_left dorklib.var matches 0.. run data modify storage do:io output append from storage do:io input[0]
execute if score #length_left dorklib.var matches ..-1 store result storage dorklib:main functions."do:list/of_strings/limit_combined_length".index int 1 run scoreboard players get #length_left dorklib.var 
execute if score #length_left dorklib.var matches ..-1 run function dorklib:impl/do/list/of_strings/limit_combined_length/cut_off_string with storage dorklib:main functions."do:list/of_strings/limit_combined_length"

data remove storage do:io input[0]
execute if score #length_left dorklib.var matches 1.. if data storage do:io input[0] run function dorklib:impl/do/list/of_strings/limit_combined_length/loop
