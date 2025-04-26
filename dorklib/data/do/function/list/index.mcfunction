# Get the index of the first instance of some "value" in a list.
# list -> int

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:list/index" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/list/index/main

return run function dorklib:io/post
