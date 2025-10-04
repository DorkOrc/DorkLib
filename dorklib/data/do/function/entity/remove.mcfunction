# Discretely kills the executing entity.

execute unless entity @s run return fail
execute if entity @s[type=player] run return run function dorklib:impl/do/entity/remove/as_player

execute on passengers run ride @s dismount
execute at @s run tp @s ~ -19999999 ~
kill @s

return 1
