# arguments: key

$data modify storage dorklib:main functions."do:nbt/compound/items".items append value {key:$(key),value:{}}
$data modify storage dorklib:main functions."do:nbt/compound/items".items[-1].value set from storage dorklib:main functions."do:nbt/compound/items".value.$(key)
$data remove storage dorklib:main functions."do:nbt/compound/items".value.$(key)
