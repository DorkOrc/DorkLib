# Run a dynamic function. 
# -> None

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:dynamic_function/run" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/dynamic_function/run/main

return run function dorklib:io/post
