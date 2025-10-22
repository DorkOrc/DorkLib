# arguments: path, index, next_index

# branch
$execute if data storage do:io $(path)[$(index)]._ run function dorklib:impl/do/text/resolve/no_entity/compound {path:"$(path)[$(index)]"}
$execute if data storage do:io $(path)[$(index)][0] run function dorklib:impl/do/text/resolve/no_entity/list {path:"$(path)[$(index)]"}

# next index
$execute unless data storage do:io $(path)[$(next_index)] run return 1
$data modify storage dorklib:main functions."do:text/resolve".args set value {path:"$(path)",index:$(next_index)}
$scoreboard players set #next_index dorklib.var $(next_index)
execute store result storage dorklib:main functions."do:text/resolve".args.next_index int 1 run scoreboard players add #next_index dorklib.var 1
function dorklib:impl/do/text/resolve/no_entity/list/loop with storage dorklib:main functions."do:text/resolve".args
