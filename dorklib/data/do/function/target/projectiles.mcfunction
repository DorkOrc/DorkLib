# Targets the projectiles whose origin is this entity.
# -> None

data modify storage dorklib:main functions."do:target/projectiles" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/projectiles/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:target/projectiles"
return run function dorklib:io/post
