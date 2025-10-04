# Converts a string containing SNBT into the NBT object that it represents.
# str -> Any

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:nbt/read_nbt" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/nbt/read_nbt/main

return run function dorklib:io/post
