# Cuts off the list of strings after some cumulative index within the strings
# list[str] -> list[str]

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:list/of_strings/limit_combined_length" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/list/of_strings/limit_combined_length/main

return run function dorklib:io/post
