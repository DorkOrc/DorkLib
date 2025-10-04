# arguments: input

$execute if data storage do:io {input:$(input)b} run return run data modify storage do:io output set value "byte"
$execute if data storage do:io {input:$(input)s} run return run data modify storage do:io output set value "short"
$execute if data storage do:io {input:$(input)i} run return run data modify storage do:io output set value "int"
$execute if data storage do:io {input:$(input)l} run return run data modify storage do:io output set value "long"
