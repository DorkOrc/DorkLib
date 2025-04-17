data modify storage dorklib:main functions."do:nbt/write_json".stack set value [{}]
data modify storage dorklib:main functions."do:nbt/write_json".stack[-1].value set from storage do:io input

function dorklib:impl/nbt/write_json/pop

data modify storage do:io output set from storage dorklib:main functions."do:nbt/write_json".returned
function do:text/flatten
