# Splits the string by newline characters and strips any leading or trailing whitespace characters from every line. Ignores the last line if it is empty.
# str -> str

data modify storage dorklib:main functions."do:str/split_and_strip_lines" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/split_and_strip_lines/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:str/split_and_strip_lines"
return run function dorklib:io/post
