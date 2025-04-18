# arguments: args

$data modify storage do:io args set value $(args)
return run function do:str/join
