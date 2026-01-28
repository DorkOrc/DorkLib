# Gets the data type of the input.
# Any -> str

data modify storage dorklib:main functions."do:nbt/type" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/nbt/type/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:nbt/type"
return run function dorklib:io/post
