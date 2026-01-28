# Resolves the text component. Uses the entity context of the executor. If no entity is executing, entity-dependent text components will become empty strings.
# str|dict|list -> str|dict

data modify storage dorklib:main functions."do:text/resolve" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/text/resolve/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:text/resolve"
return run function dorklib:io/post
