# Returns 1 if this text component, when resolved, contains any visible text glyphs, or any translate, keybind, or object components. Otherwise, returns 0.
# str|dict|list -> str|dict

data modify storage dorklib:main functions."do:text/is_non_empty" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/text/is_non_empty/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:text/is_non_empty"
return run function dorklib:io/post
