# Splits the string by newline characters and strips any leading or trailing whitespace characters from every line. Ignores the last line if it is empty.
# str -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:str/split_and_strip_lines" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/split_and_strip_lines/main

return run function dorklib:io/post
