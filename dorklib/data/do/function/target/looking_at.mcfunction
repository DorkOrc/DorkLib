# Targets the entity that this player is looking at (according to looking_at predicate).
# -> None

data modify storage dorklib:main functions."do:target/looking_at" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/looking_at/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:target/looking_at"
return run function dorklib:io/post
