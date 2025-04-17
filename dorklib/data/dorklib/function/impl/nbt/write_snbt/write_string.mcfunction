data modify storage dorklib:main functions."do:nbt/write_snbt".value set value []
data modify storage dorklib:main functions."do:nbt/write_snbt".value append from storage dorklib:main functions."do:nbt/write_snbt".string

data modify storage do:io input set value {storage:"dorklib:main",nbt:'functions."do:nbt/write_snbt".value'}
function do:text/resolve

data modify storage do:io output set string storage do:io output 1 -1

return 1
