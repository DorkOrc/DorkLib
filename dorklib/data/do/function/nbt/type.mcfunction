# Gets the data type of the input.
# Any -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:nbt/type" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/nbt/type/main

return run function dorklib:io/post
