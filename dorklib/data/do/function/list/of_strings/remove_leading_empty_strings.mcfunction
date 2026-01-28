# Removes all elements that are empty strings until something other than an empty string is reached.
# list -> list

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:list/of_strings/remove_leading_empty_strings" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/list/of_strings/remove_leading_empty_strings/main

return run function dorklib:io/post
