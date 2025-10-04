# Splits string into a list of its characters, respecting surrogate pairs.
# str -> list[chr, ...]

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:str/chars" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/chars/main

return run function dorklib:io/post
