# arguments: location_condition

scoreboard players set #valid_predicate dorklib.var 1

return 1
$execute if predicate $(location_condition) if entity @s[predicate=$(location_condition)]
