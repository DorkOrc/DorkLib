# Runs a function as the entity matching a UUID
# tuple[int,int,int,int] -> None

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:target/uuid" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/uuid/main

return run function dorklib:io/post
