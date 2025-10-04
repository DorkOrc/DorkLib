# Splits string into a list of substrings which are separated by a separator in the original string. (e.g. "aa.bb.cc" split "." -> ["aa","bb","cc"])
# str -> list[str, ...]

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:str/split" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/split/main

return run function dorklib:io/post
