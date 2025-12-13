# Delete an entire storage file.

execute unless function dorklib:io/init run return fail

scoreboard players set #traverse_to dorklib.var 0
data modify storage dorklib:main functions."do:storage/remove" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/storage/remove/main

return run function dorklib:io/post
