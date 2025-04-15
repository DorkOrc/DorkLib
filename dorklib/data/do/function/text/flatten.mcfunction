# Flatten text component to a single string. The text component will be resolved and any "translate" or "keybind" components will be ignored.
# str|dict|list -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:text/flatten" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/text/flatten/main

return run function dorklib:io/post
