data modify storage dorklib:main functions."do:str/strip_leading_whitespace".char set string storage do:io input 0 1
execute unless data storage dorklib:main functions."do:str/strip_leading_whitespace"{char:" "} unless data storage dorklib:main functions."do:str/strip_leading_whitespace"{char:"\u200C"} run return 0

data modify storage do:io input set string storage do:io input 1
execute unless data storage do:io {input:""} run function dorklib:impl/do/str/strip_leading_whitespace/loop
