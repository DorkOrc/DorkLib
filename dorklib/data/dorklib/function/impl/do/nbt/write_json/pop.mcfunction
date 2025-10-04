data modify storage do:io input set from storage dorklib:main functions."do:nbt/write_json".stack[-1].value
function do:nbt/type

execute if data storage do:io {output:"compound"} run return run function dorklib:impl/do/nbt/write_json/types/compound/main

execute if data storage do:io {output:"list"} run return run function dorklib:impl/do/nbt/write_json/types/list/main
execute if data storage do:io {output:"int_array"} run return run function dorklib:impl/do/nbt/write_json/types/list/main

execute if data storage do:io {output:"string"} run return run function dorklib:impl/do/nbt/write_json/types/string/main

execute if data storage do:io {output:"int"} run return run function dorklib:impl/do/nbt/write_json/types/int/main
execute if data storage do:io {output:"byte",args:{byte_as_boolean:1b}} run return run function dorklib:impl/do/nbt/write_json/types/bool/main
execute if data storage do:io {output:"byte"} run return run function dorklib:impl/do/nbt/write_json/types/int/main
execute if data storage do:io {output:"float"} run return run function dorklib:impl/do/nbt/write_json/types/decimal/main
execute if data storage do:io {output:"double"} run return run function dorklib:impl/do/nbt/write_json/types/decimal/main
execute if data storage do:io {output:"short"} run return run function dorklib:impl/do/nbt/write_json/types/int/main
execute if data storage do:io {output:"long"} run return run function dorklib:impl/do/nbt/write_json/types/int/main

execute if data storage do:io {output:"byte_array"} run return run function dorklib:impl/do/nbt/write_json/types/list/main
execute if data storage do:io {output:"long_array"} run return run function dorklib:impl/do/nbt/write_json/types/list/main

# otherwise, return null
data modify storage dorklib:main functions."do:nbt/write_json".returned set value "null"
data remove storage dorklib:main functions."do:nbt/write_json".stack[-1]
