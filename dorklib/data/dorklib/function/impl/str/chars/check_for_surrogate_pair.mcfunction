# arguments: c, next_character

scoreboard players set #found_surrogate_pair dorklib.var 1
$execute if data storage dorklib:constant surrogate_pairs.high."$(c)" if data storage dorklib:constant surrogate_pairs.low."$(next_character)" run return run data modify storage dorklib:main functions."do:str/chars".c set value "$(c)$(next_character)"
scoreboard players set #found_surrogate_pair dorklib.var 0

# breaks macro function if either character is a double-quote or a backslash, but that shouldn't matter as the result would still be that nothing is changed
