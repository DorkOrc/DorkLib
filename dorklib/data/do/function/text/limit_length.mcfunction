# Discards any characters after the given character limit. May split apart surrogate pairs. The text component will be resolved and anything other than "text" components will be ignored.
# str|dict|list -> str|dict

data modify storage dorklib:main functions."do:text/limit_length" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/text/limit_length/main with storage do:io args

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:text/limit_length"
return run function dorklib:io/post
