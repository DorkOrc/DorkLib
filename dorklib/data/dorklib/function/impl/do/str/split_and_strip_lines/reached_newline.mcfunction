execute if score #leading dorklib.var matches 1 run return run function dorklib:impl/do/str/split_and_strip_lines/split_here_empty

data modify storage do:io output append from storage dorklib:main functions."do:str/split_and_strip_lines".trailing_empty_lines[]
data modify storage dorklib:main functions."do:str/split_and_strip_lines".trailing_empty_lines set value []

execute store result storage dorklib:main functions."do:str/split_and_strip_lines".start_index int 1 run scoreboard players get #start_index dorklib.var
execute if score #end_index dorklib.var = #string_length dorklib.var run return run function dorklib:impl/do/str/split_and_strip_lines/split_final with storage dorklib:main functions."do:str/split_and_strip_lines"
execute store result storage dorklib:main functions."do:str/split_and_strip_lines".end_index int 1 run scoreboard players add #end_index dorklib.var 1
function dorklib:impl/do/str/split_and_strip_lines/split_here with storage dorklib:main functions."do:str/split_and_strip_lines"
