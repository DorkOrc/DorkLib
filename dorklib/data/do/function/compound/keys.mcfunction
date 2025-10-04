# Get the keys of a compound.
# dict -> list[str, ...]

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:compound/keys" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/compound/keys/main

return run function dorklib:io/post
