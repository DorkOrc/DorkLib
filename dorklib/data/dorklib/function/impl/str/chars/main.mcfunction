# verify that the input is a string, and make a copy of the input string
data modify storage dorklib:main functions."do:str/chars".temp_string set string storage do:io input
execute store success score #non_string dorklib.var run data modify storage dorklib:main functions."do:str/chars".temp_string set from storage do:io input
execute if score #non_string dorklib.var matches 1 run return run function dorklib:exception {args:{message:"Input was not a string"}}

# quick return if the string is empty
data modify storage do:io output set value []
execute if data storage do:io {input:""} run return 1

# iterate
function dorklib:impl/str/chars/loop

return 1
