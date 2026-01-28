# Concatenates a list of strings into a single string. Any numerical elements will be stringified. Any compound, list, or array elements will be ignored.
# list[str, ...] -> str

data modify storage dorklib:main functions."do:str/join" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/join/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:str/join"
return run function dorklib:io/post
