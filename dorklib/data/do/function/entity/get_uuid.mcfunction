# Gets the UUID (integer array) of an entity without serialising its NBT data.
# -> tuple[int,int,int,int]

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:entity/get_uuid" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/entity/get_uuid/main

return run function dorklib:io/post
