# Removes all elements that are empty strings until something other than an empty string is reached.
# list -> list

data modify storage dorklib:main functions."do:list/of_strings/remove_leading_empty_strings" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/list/of_strings/remove_leading_empty_strings/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:list/of_strings/remove_leading_empty_strings"
return run function dorklib:io/post
