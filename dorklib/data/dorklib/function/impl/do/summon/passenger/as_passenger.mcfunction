# arguments: function, ...

tag @s remove dorklib.local.functions.do+summon++passenger.passenger

ride @s mount @e[tag=dorklib.local.functions.do+summon++passenger.vehicle,distance=..0.001,limit=1]
execute on vehicle run tag @s remove dorklib.local.functions.do+summon++passenger.vehicle

$execute if score #run_function dorklib.var matches 1 run function $(function)
