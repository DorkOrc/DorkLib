# check for compound
execute if data storage do:io input{} run return run data modify storage do:io output set value "compound"

# check for empty list or array types
execute if data storage do:io {input:[]} run return run data modify storage do:io output set value "list"
execute if data storage do:io {input:[B;]} run return run data modify storage do:io output set value "byte_array"
execute if data storage do:io {input:[I;]} run return run data modify storage do:io output set value "int_array"
execute if data storage do:io {input:[L;]} run return run data modify storage do:io output set value "long_array"

# check list or array types
execute if data storage do:io input[0] run return run function dorklib:impl/do/nbt/type/get_list_or_array_type

# check for string
data modify storage dorklib:main functions."do:nbt/type".string set string storage do:io input
execute store success score #non_string dorklib.var run data modify storage dorklib:main functions."do:nbt/type".string set from storage do:io input
execute if score #non_string dorklib.var matches 0 run return run data modify storage do:io output set value "string"

# check for float or double
function dorklib:impl/do/nbt/type/check_decimal with storage do:io {}
execute if data storage do:io output run return 1
function dorklib:impl/do/nbt/type/check_whole_number with storage do:io {}
execute if data storage do:io output run return 1

# check for NaN or Infinity
return run function dorklib:exception {args:{message:"Unrecognised data type. Most likely is NaN or Infinity"}}
