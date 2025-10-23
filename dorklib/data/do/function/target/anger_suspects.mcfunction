# Targets the anger_suspects entity of this Warden.
# -> None

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:target/anger_suspects" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/anger_suspects/main

return run function dorklib:io/post
