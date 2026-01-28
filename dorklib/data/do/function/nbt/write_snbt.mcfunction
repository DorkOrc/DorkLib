# Converts any NBT object into a string containing its SNBT representation.
# Any -> str

data modify storage dorklib:main functions."do:nbt/write_snbt" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/nbt/write_snbt/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:nbt/write_snbt"
return run function dorklib:io/post
