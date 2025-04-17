# arguments: input

$execute if data storage do:io {input:$(input)f} run return run data modify storage do:io output set value "float"
$execute if data storage do:io {input:$(input)d} run return run data modify storage do:io output set value "double"
