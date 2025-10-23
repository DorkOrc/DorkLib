# Gets the entity's hex UUID or username.
# -> string

execute unless function dorklib:io/init_args_only run return fail

data modify storage dorklib:main functions."do:entity/get_entity_repr" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/entity/get_entity_repr/main

return run function dorklib:io/post
