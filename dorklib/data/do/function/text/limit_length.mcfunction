# Discards any characters after the given character limit. May split apart surrogate pairs. The text component will be resolved and anything other than "text" components will be ignored.
# str|dict|list -> str|dict

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:text/limit_length" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/text/limit_length/main with storage do:io args

return run function dorklib:io/post
