# Gets the entity's hex UUID or username.
# -> string

data modify storage dorklib:main functions."do:entity/get_entity_repr" set value {}
execute if function dorklib:io/init_args_only store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/entity/get_entity_repr/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:entity/get_entity_repr"
return run function dorklib:io/post
