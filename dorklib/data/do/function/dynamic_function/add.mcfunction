# Initialise a dynamic function. 
# -> None

data modify storage dorklib:main functions."do:dynamic_function/add" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/dynamic_function/add/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:dynamic_function/add"
return run function dorklib:io/post
