# directly stringify number types
data modify storage do:io output set string storage do:io input
execute store success score #not_string dorklib.var run data modify storage do:io input set from storage do:io output
execute if score #not_string dorklib.var matches 1 run return 1

# otherwise, flatten the pretty-printed form
data modify storage dorklib:main functions."do:nbt/write_snbt".value set from storage do:io input
data modify storage do:io input set value {storage:"dorklib:main",nbt:'functions."do:nbt/write_snbt".value'}
function do:text/flatten

return 1
