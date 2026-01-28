# Targets the entity whose UUID matches the input integer array UUID.
# tuple[int,int,int,int] -> None

data modify storage dorklib:main functions."do:target/uuid" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/target/uuid/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:target/uuid"
return run function dorklib:io/post
