# Converts a string containing SNBT into the NBT object that it represents.
# str -> Any

data modify storage dorklib:main functions."do:nbt/read_nbt" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/nbt/read_nbt/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:nbt/read_snbt"
return run function dorklib:io/post
