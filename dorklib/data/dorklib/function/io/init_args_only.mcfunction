data remove storage do:io exception

execute if score #debug_mode dorklib.global matches 1 run function dorklib:io/init_debug

scoreboard players reset #result dorklib.var
scoreboard players set #success dorklib.var 0

data remove storage do:io input
data remove storage do:io output

return 1
