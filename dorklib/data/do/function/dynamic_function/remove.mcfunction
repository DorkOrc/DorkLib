# Remove a dynamic function. 
# -> None

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:dynamic_function/remove" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/dynamic_function/remove/main

return run function dorklib:io/post
