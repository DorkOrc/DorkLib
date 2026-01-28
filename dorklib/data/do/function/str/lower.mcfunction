# Converts each character in the string to its lowercase counterpart, if possible.
# str -> str

data modify storage dorklib:main functions."do:str/split" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/lower/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:str/lower"
return run function dorklib:io/post
