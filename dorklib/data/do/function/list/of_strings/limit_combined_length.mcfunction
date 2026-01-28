# Cuts off the list of strings after some cumulative index within the strings
# list[str] -> list[str]

data modify storage dorklib:main functions."do:list/of_strings/limit_combined_length" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/list/of_strings/limit_combined_length/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:list/of_strings/limit_combined_length"
return run function dorklib:io/post
