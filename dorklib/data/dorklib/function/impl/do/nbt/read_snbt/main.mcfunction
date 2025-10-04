# verify that the input is a string
data modify storage dorklib:main functions."do:str/read_snbt".string set string storage do:io input
execute store success score #non_string dorklib.var run data modify storage dorklib:main functions."do:str/read_snbt".string set from storage do:io input
execute if score #non_string dorklib.var matches 1 run return run function dorklib:exception {args:{message:"Input was not a string"}}

# enter the value as a macro
function dorklib:impl/do/nbt/read_snbt/macro with storage dorklib:main functions."do:str/read_snbt"
execute unless data storage do:io output run return run function dorklib:exception {args:{message:"Invalid SNBT input"}}

return 1
