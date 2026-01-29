# Delete an entire storage file.
# -> None

scoreboard players set #traverse_to dorklib.var 0
data modify storage dorklib:main functions."do:storage/remove" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/storage/remove/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:storage/remove"
return run function dorklib:io/post
