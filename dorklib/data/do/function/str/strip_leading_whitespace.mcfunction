# Strips any leading whitespace characters
# str -> str

data modify storage dorklib:main functions."do:str/strip_leading_whitespace" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/strip_leading_whitespace/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:str/strip_leading_whitespace"
return run function dorklib:io/post
