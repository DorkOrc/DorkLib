# arguments: value

$data modify storage dorklib:main functions."do:nbt/write_json".returned set value "$(value).0"

# ensure the value can be written as a long (does not contain a decimal point)
return 1
$data modify storage dorklib:main functions."do:nbt/write_json".returned set value $(value)L
