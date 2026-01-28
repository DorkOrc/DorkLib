data modify storage dorklib:main functions."do:str/split_and_strip_lines".char set string storage dorklib:main functions."do:str/split_and_strip_lines".temp_string 0 1
data modify storage dorklib:main functions."do:str/split_and_strip_lines".temp_string set string storage dorklib:main functions."do:str/split_and_strip_lines".temp_string 1
scoreboard players add #index dorklib.var 1

execute if score #leading dorklib.var matches 0 unless data storage dorklib:main functions."do:str/split_and_strip_lines"{char:" "} unless data storage dorklib:main functions."do:str/split_and_strip_lines"{char:"\u200C"} unless data storage dorklib:main functions."do:str/split_and_strip_lines"{char:"\n"} run scoreboard players operation #end_index dorklib.var = #index dorklib.var
execute if score #leading dorklib.var matches 1 unless data storage dorklib:main functions."do:str/split_and_strip_lines"{char:" "} unless data storage dorklib:main functions."do:str/split_and_strip_lines"{char:"\u200C"} unless data storage dorklib:main functions."do:str/split_and_strip_lines"{char:"\n"} run function dorklib:impl/do/str/split_and_strip_lines/stop_leading

execute if data storage dorklib:main functions."do:str/split_and_strip_lines"{char:"\n"} run function dorklib:impl/do/str/split_and_strip_lines/reached_newline

execute if score #index dorklib.var < #string_length dorklib.var run function dorklib:impl/do/str/split_and_strip_lines/loop
