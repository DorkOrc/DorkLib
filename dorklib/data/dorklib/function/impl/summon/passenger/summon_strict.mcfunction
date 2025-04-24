# arguments: id, nbt, function

# summon passenger
$summon $(id) ~ ~ ~ $(nbt)

# mount passenger onto executing entity, then run function as it
tag @s add dorklib.local.functions.do+summon++passenger.vehicle
execute as @e[tag=dorklib.local.functions.do+summon++passenger.passenger,distance=..0.001,limit=1] run function dorklib:impl/summon/passenger/as_passenger with storage dorklib:local functions."do:summon/passenger"
tag @s remove dorklib.local.functions.do+summon++passenger.vehicle

return 1
