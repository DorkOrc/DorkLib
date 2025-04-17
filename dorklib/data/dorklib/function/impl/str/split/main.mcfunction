# verify that the input is a string
data modify storage dorklib:main functions."do:str/split".string set string storage do:io input
execute store success score #non_string dorklib.var run data modify storage dorklib:main functions."do:str/split".string set from storage do:io input
execute if score #non_string dorklib.var matches 1 run return run function dorklib:exception {args:{message:"Input was not a string"}}

# verify that the separator is a string
data modify storage dorklib:main functions."do:str/split".separator set string storage do:io args.separator
execute store success score #non_string dorklib.var run data modify storage dorklib:main functions."do:str/split".separator set from storage do:io args.separator
execute if score #non_string dorklib.var matches 1 run return run function dorklib:exception {args:{message:"Separator was not a string"}}

# get max_splits
scoreboard players set #max_splits dorklib.var 2147483647
execute if data storage do:io args.max_splits store result score #max_splits dorklib.var run data get storage do:io args.max_splits
execute if score #max_splits dorklib.var matches ..0 run return run function dorklib:exception {args:{message:"The maximum number of splits must be at least 1"}}

# fail if the separator is empty
execute if data storage do:io args{separator:""} run return run function dorklib:exception {args:{message:"Separator was empty"}}

# quick return if the string is empty
execute if data storage do:io {input:""} run return run data modify storage do:io output set value [""]

# set up local data
execute store result score #string_length dorklib.var store result score #string_max_index dorklib.var run data get storage dorklib:main functions."do:str/split".string
execute store result storage dorklib:main functions."do:str/split".string_max_index int 1 run scoreboard players remove #string_max_index dorklib.var 1
execute store result score #separator_length dorklib.var store result score #separator_max_index dorklib.var run data get storage dorklib:main functions."do:str/split".separator
execute store result storage dorklib:main functions."do:str/split".separator_max_index int 1 run scoreboard players remove #separator_max_index dorklib.var 1
data modify storage dorklib:main functions."do:str/split".temp_string set from storage dorklib:main functions."do:str/split".string
data modify storage dorklib:main functions."do:str/split".separator_start_character set string storage dorklib:main functions."do:str/split".separator 0 1
data modify storage dorklib:main functions."do:str/split".separator_remainder set string storage dorklib:main functions."do:str/split".separator 1
data modify storage dorklib:main functions."do:str/split".start_index set value 0
scoreboard players set #index dorklib.var -1
data modify storage do:io output set value []
scoreboard players set #splits dorklib.var 0

# iterate
function dorklib:impl/str/split/loop
function dorklib:impl/str/split/split_final with storage dorklib:main functions."do:str/split"

return 1
