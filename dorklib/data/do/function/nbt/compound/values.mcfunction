# Get the values of a compound.
# dict -> list[Any, ...]

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:nbt/compound/values" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/nbt/compound/values/main

return run function dorklib:io/post
