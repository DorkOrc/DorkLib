# Converts each character in the string to an alphanumeric character or an underscore
# str -> str

data modify storage dorklib:main functions."do:str/split" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/str/alphanumeric/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:str/alphanumeric"
return run function dorklib:io/post
