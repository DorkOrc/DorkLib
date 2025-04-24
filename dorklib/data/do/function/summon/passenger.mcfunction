# Summons an entity that rides the executing entity and runs a function. The executing entity must be in a loaded chunk, otherwise no entity will be summoned.
# arguments: id, nbt, function

$data modify storage dorklib:local functions."do:summon/passenger" set value {function:"$(function)",id:"$(id)",nbt:$(nbt)}
return run function dorklib:impl/summon/passenger/main
