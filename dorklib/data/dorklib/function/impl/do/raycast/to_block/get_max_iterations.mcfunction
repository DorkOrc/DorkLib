execute store result score #max_distance dorklib.var run data get storage do:io args.max_distance 1024

scoreboard players set #max_iterations dorklib.var -1774
scoreboard players operation #max_iterations dorklib.var *= #max_distance dorklib.var
scoreboard players operation #max_iterations dorklib.var /= #M_squared dorklib.constant
scoreboard players operation #max_iterations dorklib.var *= #-1 dorklib.constant
