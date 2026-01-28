# verify that the input is a string
data modify storage dorklib:main functions."do:str/strip_trailing_whitespace".temp_string set string storage do:io input
execute store success score #non_string dorklib.var run data modify storage dorklib:main functions."do:str/strip_trailing_whitespace".temp_string set from storage do:io input
execute if score #non_string dorklib.var matches 1 run return run function dorklib:exception {args:{message:"Input was not a string"}}

# quick return if the string is empty
execute if data storage do:io {input:""} run return run data modify storage do:io output set value ""

# strip
function dorklib:impl/do/str/strip_trailing_whitespace/loop
data modify storage do:io output set from storage do:io input

return 1
