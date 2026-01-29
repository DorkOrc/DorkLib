data remove storage do:io exception

execute if score #debug_mode dorklib.global matches 1 run function dorklib:io/init_debug

scoreboard players reset #result dorklib.var
scoreboard players set #success dorklib.var 0

execute unless data storage do:io input unless data storage do:io output run return run function dorklib:exception {args:{message:"Expected an input"}}
execute unless data storage do:io input run data modify storage do:io input set from storage do:io output
data remove storage do:io output

return 1
