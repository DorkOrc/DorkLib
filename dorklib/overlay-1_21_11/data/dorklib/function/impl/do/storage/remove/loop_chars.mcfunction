# arguments: index

$data modify storage dorklib:main functions."do:storage/remove".slice set string storage do:io output 1 $(index)
data modify storage dorklib:main functions."do:storage/remove".last_character set string storage dorklib:main functions."do:storage/remove".slice -1
execute unless data storage dorklib:main functions."do:storage/remove"{last_character:":"} store result storage dorklib:main functions."do:storage/remove".index int 1 run scoreboard players add #index dorklib.var 1
execute unless data storage dorklib:main functions."do:storage/remove"{last_character:":"} run return run function dorklib:impl/do/storage/remove/loop_chars with storage dorklib:main functions."do:storage/remove"

data modify storage dorklib:main functions."do:storage/remove".key set string storage dorklib:main functions."do:storage/remove".slice 0 -1
function dorklib:impl/do/storage/remove/delete_key with storage dorklib:main functions."do:storage/remove"
