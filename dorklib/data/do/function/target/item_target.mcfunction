# Targets the Owner entity of this Item.
# -> None

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:target/item_target" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/item_target/main

return run function dorklib:io/post
