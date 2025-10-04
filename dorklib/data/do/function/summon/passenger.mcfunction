# Summons an entity that rides the executing entity and runs a function. The executing entity must be in a loaded chunk, otherwise no entity will be summoned.
# str -> None

execute unless function dorklib:io/init run return fail

data modify storage dorklib:main functions."do:summon/passenger" set value {}
execute store success score #success dorklib.var store result score #result dorklib.var run function dorklib:impl/do/summon/passenger/main

return run function dorklib:io/post
