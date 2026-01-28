# Gets the block_state object of the block at this location.

data modify storage dorklib:main functions."do:block/block_state" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/block/block_state/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:block/block_state"
return run function dorklib:io/post
