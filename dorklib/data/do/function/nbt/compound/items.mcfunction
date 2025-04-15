# Get the items of a compound. Returns a list of lists where each sublist contains a string (the key) and an arbitrary object (the value associated with that key in the compound). 
# dict -> list[tuple[str, Any], ...]

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:nbt/compound/items" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/nbt/compound/items/main

return run function dorklib:io/post
