execute unless score #function_running dorklib.global matches 1 run data remove storage do:io debug
execute unless score #function_running dorklib.global matches 1 run data modify storage do:io debug set from storage do:io {}
scoreboard players set #function_running dorklib.global 1
