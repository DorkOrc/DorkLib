# Gets the hexadecimal representation of an entity's UUID.
# -> string

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:entity/get_uuid_repr" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/entity/get_uuid_repr/main

return run function dorklib:io/post
