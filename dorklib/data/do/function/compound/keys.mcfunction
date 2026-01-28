# Get the keys of a compound.
# dict -> list[str, ...]

data modify storage dorklib:main functions."do:compound/keys" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/compound/keys/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:compound/keys"
return run function dorklib:io/post
