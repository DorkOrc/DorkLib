# Get the items of a compound. Returns a list of compounds each with a "key" and "value" child storing, respectively, the key and the value associated with that key in the input compound.
# dict -> list[{"key": str, "value": Any}, ...]

data modify storage dorklib:main functions."do:compound/items" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/compound/items/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:compound/items"
return run function dorklib:io/post
