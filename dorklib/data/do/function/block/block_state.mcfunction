# Gets the block_state object of the block at this location.

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:block/block_state" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/block/block_state/main

return run function dorklib:io/post
