# arguments: entity_repr

scoreboard players reset @s dorklib.var
$scoreboard players set $(entity_repr) dorklib.var 1
execute if score @s dorklib.var matches 1 run return 1
return fail
