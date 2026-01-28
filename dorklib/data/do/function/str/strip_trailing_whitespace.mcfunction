# Strips any trailing whitespace characters
# str -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:str/strip_trailing_whitespace" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/strip_trailing_whitespace/main

return run function dorklib:io/post
