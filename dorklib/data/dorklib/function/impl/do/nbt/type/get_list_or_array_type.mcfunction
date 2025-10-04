function do:nbt/write_snbt
data modify storage dorklib:main functions."do:nbt/type".identifier set string storage do:io output 1 2

execute if data storage dorklib:main functions."do:nbt/type"{identifier:"B"} run return run data modify storage do:io output set value "byte_array"
execute if data storage dorklib:main functions."do:nbt/type"{identifier:"I"} run return run data modify storage do:io output set value "int_array"
execute if data storage dorklib:main functions."do:nbt/type"{identifier:"L"} run return run data modify storage do:io output set value "long_array"
# else
data modify storage do:io output set value "list"
return 1
