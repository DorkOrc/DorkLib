# Splits string into a list of substrings which are separated by a separator in the original string. (e.g. "aa.bb.cc" split "." -> ["aa","bb","cc"])
# str -> list[str, ...]

data modify storage dorklib:main functions."do:str/split" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/split/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:str/split"
return run function dorklib:io/post
