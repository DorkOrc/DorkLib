# get the next character
data modify storage dorklib:main functions."do:str/chars".c set string storage dorklib:main functions."do:str/chars".temp_string 0 1
data modify storage dorklib:main functions."do:str/chars".temp_string set string storage dorklib:main functions."do:str/chars".temp_string 1

# combine surrogate pairs by checking this character and the next character
data modify storage dorklib:main functions."do:str/chars".next_character set string storage dorklib:main functions."do:str/chars".temp_string 0 1
function dorklib:impl/do/str/chars/check_for_surrogate_pair with storage dorklib:main functions."do:str/chars"
execute if score #found_surrogate_pair dorklib.var matches 1 run data modify storage dorklib:main functions."do:str/chars".temp_string set string storage dorklib:main functions."do:str/chars".temp_string 1

# run function
execute if score #run_function dorklib.var matches 1 run function dorklib:impl/do/str/chars/run_function with storage do:io args

# append character
data modify storage do:io output append from storage dorklib:main functions."do:str/chars".c

# repeat until the temp_string is empty
execute unless data storage dorklib:main functions."do:str/chars"{temp_string:""} run function dorklib:impl/do/str/chars/loop
