# Resolve text component using the current execution context. If no executing entity exists, a temporary marker will be used.
# str|dict|list -> str|dict

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:text/resolve" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/text/resolve/main

return run function dorklib:io/post
