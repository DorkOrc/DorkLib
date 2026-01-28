# Returns 1 if this text component, when resolved, contains any visible text glyphs, or any translate, keybind, or object components. Otherwise, returns 0.
# str|dict|list -> str|dict

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:text/is_non_empty" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/text/is_non_empty/main

return run function dorklib:io/post
