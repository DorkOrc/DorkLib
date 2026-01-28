# Splits string into a list of its characters, respecting surrogate pairs.
# str -> list[chr, ...]

data modify storage dorklib:main functions."do:str/chars" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/chars/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:str/chars"
return run function dorklib:io/post
