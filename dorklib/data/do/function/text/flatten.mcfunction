# Flatten text component to a single string. The text component will be resolved and anything other than "text" components will be ignored.
# str|dict|list -> str

data modify storage dorklib:main functions."do:text/flatten" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/text/flatten/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:text/flatten"
return run function dorklib:io/post
