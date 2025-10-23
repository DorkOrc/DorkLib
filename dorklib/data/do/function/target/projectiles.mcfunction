# Targets the projectiles whose origin is this entity.
# -> None

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:target/projectiles" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/projectiles/main

return run function dorklib:io/post
