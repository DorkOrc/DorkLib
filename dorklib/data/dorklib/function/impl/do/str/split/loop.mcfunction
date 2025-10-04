data modify storage dorklib:main functions."do:str/split".c set string storage dorklib:main functions."do:str/split".temp_string 0 1
data modify storage dorklib:main functions."do:str/split".temp_string set string storage dorklib:main functions."do:str/split".temp_string 1
scoreboard players add #index dorklib.var 1

execute store success score #different_character dorklib.var run data modify storage dorklib:main functions."do:str/split".c set from storage dorklib:main functions."do:str/split".separator_start_character
execute if score #different_character dorklib.var matches 0 if function dorklib:impl/do/str/split/check_for_separator run function dorklib:impl/do/str/split/split_here with storage dorklib:main functions."do:str/split"
execute if score #splits dorklib.var >= #max_splits dorklib.var run return 0

execute if score #index dorklib.var < #string_length dorklib.var run function dorklib:impl/do/str/split/loop

