# arguments: key

$data modify storage do:io output append value {key:'$(key)',value:{}}
$data modify storage do:io output[-1].value set from storage dorklib:main functions."do:compound/items".value.'$(key)'
$data remove storage dorklib:main functions."do:compound/items".value.'$(key)'
