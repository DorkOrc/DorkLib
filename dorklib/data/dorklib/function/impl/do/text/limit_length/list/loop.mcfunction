# arguments: path, index

# do nothing if this index does not exist
$execute unless data storage do:io output$(path)[$(index)] run return 0

# if the max length has already been exceeded, discard
$execute if score #max_length dorklib.var matches 0 run data remove storage do:io output$(path)[$(index)]
$execute if score #max_length dorklib.var matches 0 if data storage do:io output$(path)[$(index)] run return run function dorklib:impl/do/text/limit_length/list/loop {path:"$(path)",index:$(index)}

# otherwise, process this string or compound
$data modify storage dorklib:main functions."do:text/limit_length".element set from storage do:io output$(path)[$(index)]

scoreboard players set #this_length dorklib.var 0
execute unless data storage dorklib:main functions."do:text/limit_length".element{} store result score #this_length dorklib.var run data get storage dorklib:main functions."do:text/limit_length".element
 execute if score #this_length dorklib.var matches 1.. store result score #remainder dorklib.var run scoreboard players operation #accumulated_length dorklib.var += #this_length dorklib.var
 execute if score #this_length dorklib.var matches 1.. if score #accumulated_length dorklib.var > #max_length dorklib.var run scoreboard players operation #remainder dorklib.var -= #max_length dorklib.var
 execute if score #this_length dorklib.var matches 1.. if score #accumulated_length dorklib.var > #max_length dorklib.var store result storage dorklib:main functions."do:text/limit_length".remainder int -1 run scoreboard players operation #remainder dorklib.var -= #this_length dorklib.var
 execute if score #this_length dorklib.var matches 1.. if score #accumulated_length dorklib.var > #max_length dorklib.var run function dorklib:impl/do/text/limit_length/compound/slice_text with storage dorklib:main functions."do:text/limit_length"
$execute if score #this_length dorklib.var matches 1.. if score #accumulated_length dorklib.var > #max_length dorklib.var run data modify storage do:io output$(path)[$(index)] set from storage dorklib:main functions."do:text/limit_length".element
 execute if score #this_length dorklib.var matches 1.. if score #accumulated_length dorklib.var >= #max_length dorklib.var run scoreboard players set #max_length dorklib.var 0

$execute if data storage dorklib:main functions."do:text/limit_length".element{} run function dorklib:impl/do/text/limit_length/compound/main {path:"$(path)[$(index)]"}

# next index
$data modify storage dorklib:main functions."do:text/limit_length".args set value {path:"$(path)",index:$(index)}
execute store result score #index dorklib.var run data get storage dorklib:main functions."do:text/limit_length".args.index
execute store result storage dorklib:main functions."do:text/limit_length".args.index int 1 run scoreboard players add #index dorklib.var 1
function dorklib:impl/do/text/limit_length/list/loop with storage dorklib:main functions."do:text/limit_length".args
