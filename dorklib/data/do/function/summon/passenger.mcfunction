# Summons an entity that rides the executing entity and runs a function. The executing entity must be in a loaded chunk, otherwise no entity will be summoned.
# str -> None

data modify storage dorklib:main functions."do:summon/passenger" set value {}
execute if function dorklib:io/init store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/summon/passenger/main

execute if score #success dorklib.var matches 0 run data modify storage do:io exception.function prepend value "do:summon/passenger"
return run function dorklib:io/post
