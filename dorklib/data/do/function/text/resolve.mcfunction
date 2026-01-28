# Resolves the text component. Uses the entity context of the executor. If no entity is executing, entity-dependent text components will become empty strings.
# str|dict|list -> str|dict

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:text/resolve" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/text/resolve/main

return run function dorklib:io/post
