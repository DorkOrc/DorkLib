# Targets the liked_player entity of this Allay.
# -> None

data modify storage dorklib:main functions."do:target/liked_player" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/liked_player/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:target/liked_player"
return run function dorklib:io/post
