# Inserts a backslash in front of backslashes and single-quotes in the string. Also replaces several special characters with their respective escape sequence (e.g. \n).
# str -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:str/escape" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/str/escape/single_quote

return run function dorklib:io/post
