# handle strings as a special case
data modify storage dorklib:main functions."do:nbt/write_snbt".string set string storage do:io input
execute store success score #non_string dorklib.var run data modify storage dorklib:main functions."do:nbt/write_snbt".string set from storage do:io input
execute if score #non_string dorklib.var matches 0 run return run function dorklib:impl/nbt/write_snbt/write_string

# numerical types can be directly stringified
data modify storage do:io output set string storage do:io input
execute if data storage do:io output run return 1

# for compounds, lists, and arrays, resolve an "nbt" text componnt
data modify storage dorklib:main functions."do:nbt/write_snbt".value set from storage do:io input
data modify storage do:io input set value {storage:"dorklib:main",nbt:'functions."do:nbt/write_snbt".value'}
function do:text/resolve

return 1
