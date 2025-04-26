data modify storage dorklib:main functions."do:compound/items".c set string storage dorklib:main functions."do:compound/items".temp_string 0 1
data modify storage dorklib:main functions."do:compound/items".temp_string set string storage dorklib:main functions."do:compound/items".temp_string 1
scoreboard players add #index dorklib.var 1

# stop if this character is a colon (unless in a string)
execute if score #in_string dorklib.var matches 0 if data storage dorklib:main functions."do:compound/items"{c:":"} run return 1

# skip over the next character if this character is a backslash (handle escaped quote marks)
execute if score #string_key dorklib.var matches 1 if data storage dorklib:main functions."do:compound/items"{c:"\\"} run return run function dorklib:impl/compound/items/skip_character

# leave string if this character matches the initial quote type
execute if score #in_string dorklib.var matches 1 if score #quote_type dorklib.var matches 1 if data storage dorklib:main functions."do:compound/items"{c:'"'} run scoreboard players set #in_string dorklib.var 0
execute if score #in_string dorklib.var matches 1 if score #quote_type dorklib.var matches 0 if data storage dorklib:main functions."do:compound/items"{c:"'"} run scoreboard players set #in_string dorklib.var 0

# otherwise, continue
function dorklib:impl/compound/items/loop_characters
