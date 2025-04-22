# Converts each character in the string to an alphanumeric character or an underscore
# str -> str

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:str/split" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/str/alphanumeric/main

return run function dorklib:io/post
