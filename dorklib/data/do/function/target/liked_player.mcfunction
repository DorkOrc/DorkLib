# Targets the liked_player entity of this Allay.
# -> None

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:target/liked_player" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/liked_player/main

return run function dorklib:io/post
