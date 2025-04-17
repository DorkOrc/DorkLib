# arguments: start_index, end_index, separator_max_index

$data modify storage do:io output append string storage dorklib:main functions."do:str/split".string $(start_index) $(end_index)

$data modify storage dorklib:main functions."do:str/split".temp_string set string storage dorklib:main functions."do:str/split".temp_string $(separator_max_index)
execute store result score #start_index dorklib.var run scoreboard players operation #index dorklib.var += #separator_max_index dorklib.var
execute store result storage dorklib:main functions."do:str/split".start_index int 1 run scoreboard players add #start_index dorklib.var 1

scoreboard players add #splits dorklib.var 1
