# Concatenates a list of strings into a single string. Any numerical elements will be stringified. Any compound, list, or array elements will be ignored.
# list[str, ...] -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:str/join" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/str/join/main

return run function dorklib:io/post
