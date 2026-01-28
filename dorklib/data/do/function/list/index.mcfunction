# Get the index of the first instance of some "value" in a list.
# list -> int

data modify storage dorklib:main functions."do:list/index" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/list/index/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:list/index"
return run function dorklib:io/post
