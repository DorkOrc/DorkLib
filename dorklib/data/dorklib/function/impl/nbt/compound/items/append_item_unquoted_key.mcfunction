# arguments: key

$data modify storage dorklib:main functions."do:nbt/compound/items".items append value ["$(key)",{}]
$data modify storage dorklib:main functions."do:nbt/compound/items".items[-1][1] set from storage dorklib:main functions."do:nbt/compound/items".value.$(key)
$data remove storage dorklib:main functions."do:nbt/compound/items".value.$(key)
