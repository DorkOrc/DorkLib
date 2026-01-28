# Get the values of a compound.
# dict -> list[Any, ...]

data modify storage dorklib:main functions."do:compound/values" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/compound/values/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:compound/values"
return run function dorklib:io/post
