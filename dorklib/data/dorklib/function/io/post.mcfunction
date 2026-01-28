data remove storage do:io input
data remove storage do:io args

execute if score #success dorklib.var matches 0 unless data storage do:io exception run return run function dorklib:exception {args:{message:"An uncaught exception occurred"}}

execute if score #success dorklib.var matches 1 run return run scoreboard players get #result dorklib.var
return fail
