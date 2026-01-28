# verify that the input is a string
data modify storage dorklib:main functions."do:str/split_and_strip_lines".string set string storage do:io input
execute store success score #non_string dorklib.var run data modify storage dorklib:main functions."do:str/split_and_strip_lines".string set from storage do:io input
execute if score #non_string dorklib.var matches 1 run return run function dorklib:exception {args:{message:"The input must be a string"}}

# quick return if the string is empty
execute if data storage do:io {input:""} run return run data modify storage do:io output set value [""]

# set up local data
execute store result score #string_length dorklib.var run data get storage dorklib:main functions."do:str/split_and_strip_lines".string
data modify storage dorklib:main functions."do:str/split_and_strip_lines".temp_string set from storage dorklib:main functions."do:str/split_and_strip_lines".string
scoreboard players set #leading dorklib.var 1
scoreboard players set #start_index dorklib.var 0
scoreboard players set #end_index dorklib.var 0

scoreboard players set #index dorklib.var -1
data modify storage dorklib:main functions."do:str/split_and_strip_lines".trailing_empty_lines set value []
data modify storage do:io output set value []

# iterate
function dorklib:impl/do/str/split_and_strip_lines/loop
function dorklib:impl/do/str/split_and_strip_lines/reached_newline

return 1
