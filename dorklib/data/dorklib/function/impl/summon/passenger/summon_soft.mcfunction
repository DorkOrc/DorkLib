# arguments: id, nbt, function

# summon passenger and mount passenger onto executing entity, then run function as it
tag @s add dorklib.local.functions.do+summon++passenger.vehicle
$execute summon $(id) run function dorklib:impl/summon/passenger/as_passenger with storage dorklib:local functions."do:summon/passenger"
tag @s remove dorklib.local.functions.do+summon++passenger.vehicle

return 1
