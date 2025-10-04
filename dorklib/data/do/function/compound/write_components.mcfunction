# Converts an NBT compound into a string containing its key-value pairs separated by equals signs and wrapped in square brackets.
# compound -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:compound/write_components" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/compound/write_components/main

return run function dorklib:io/post
