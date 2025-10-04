# Converts any NBT object into a string containing its JSON representation.
# Any -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:nbt/write_json" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/nbt/write_json/main

return run function dorklib:io/post
