# Targets the entity that this player is looking at (according to looking_at predicate).
# -> None

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:target/looking_at" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/looking_at/main

return run function dorklib:io/post
