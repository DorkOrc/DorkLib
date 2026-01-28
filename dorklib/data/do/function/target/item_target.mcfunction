# Targets the Owner entity of this Item.
# -> None

data modify storage dorklib:main functions."do:target/item_target" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/item_target/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:target/item_target"
return run function dorklib:io/post
