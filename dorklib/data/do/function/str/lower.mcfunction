# Converts each character in the string to its lowercase counterpart, if possible.
# str -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:str/split" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/lower/main

return run function dorklib:io/post
