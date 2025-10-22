# arguments: path

$execute if data storage do:io $(path)[0] run data modify storage do:io $(path)[]._ set value _
$execute if data storage do:io $(path)[0] run function dorklib:impl/do/text/resolve/no_entity/list/loop {path:"$(path)",index:0,next_index:1}
