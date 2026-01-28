data remove storage do:io input
data remove storage do:io args

execute if score #success dorklib.var matches 0 run return run function dorklib:io/post_exception

execute if score #success dorklib.var matches 1 run return run scoreboard players get #result dorklib.var

return fail
