# arguments: start_index, end_index

$data modify storage do:io output append string storage dorklib:main functions."do:str/split_and_strip_lines".string $(start_index) $(end_index)

scoreboard players operation #start_index dorklib.var = #index dorklib.var
scoreboard players operation #end_index dorklib.var = #index dorklib.var
scoreboard players set #leading dorklib.var 1
