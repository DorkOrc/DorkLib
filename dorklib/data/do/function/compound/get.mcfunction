# Get the value for some "key" in a compound. If the value is not present, then a "default" is outputted. If no default is specified, an exception will occur.
# dict -> list[Any, ...]

data modify storage dorklib:main functions."do:compound/get" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/compound/get/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:compound/get"
return run function dorklib:io/post
