# Get the value for some "key" in a compound. If the value is not present, then a "default" is outputted. If no default is specified, an exception will occur.
# dict -> list[Any, ...]

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:compound/get" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/compound/get/main

return run function dorklib:io/post
