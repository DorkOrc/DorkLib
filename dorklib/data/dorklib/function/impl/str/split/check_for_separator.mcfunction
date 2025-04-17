execute if score #separator_length dorklib.var matches 1 store result storage dorklib:main functions."do:str/split".end_index int 1 run scoreboard players get #index dorklib.var
execute if score #separator_length dorklib.var matches 1 run return 1

function dorklib:impl/str/split/slice_remainder with storage dorklib:main functions."do:str/split"
execute store success score #different dorklib.var run data modify storage dorklib:main functions."do:str/split".remainder set from storage dorklib:main functions."do:str/split".separator_remainder

execute if score #different dorklib.var matches 0 store result storage dorklib:main functions."do:str/split".end_index int 1 run scoreboard players get #index dorklib.var
return run execute if score #different dorklib.var matches 0
