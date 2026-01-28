# Inserts a backslash in front of backslashes and single-quotes in the string. Also replaces several special characters with their respective escape sequence (e.g. \n).
# str -> str

data modify storage dorklib:main functions."do:str/escape" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/escape/single_quote

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:str/escape/single_quote"
return run function dorklib:io/post
