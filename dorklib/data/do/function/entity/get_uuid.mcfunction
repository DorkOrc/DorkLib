# Gets the UUID (integer array) of an entity without serialising its NBT data.
# -> tuple[int,int,int,int]

data modify storage dorklib:main functions."do:entity/get_uuid" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/entity/get_uuid/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:get_uuid"
return run function dorklib:io/post
