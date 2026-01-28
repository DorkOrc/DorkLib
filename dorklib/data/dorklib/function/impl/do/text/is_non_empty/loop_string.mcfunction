data modify storage dorklib:main functions."do:text/is_non_empty".char set string storage dorklib:main functions."do:text/is_non_empty".element -1
data modify storage dorklib:main functions."do:text/is_non_empty".element set string storage dorklib:main functions."do:text/is_non_empty".element 0 -1

execute unless data storage dorklib:main functions."do:text/is_non_empty"{char:" "} unless data storage dorklib:main functions."do:text/is_non_empty"{char:"\u200C"} run return 1

execute unless data storage dorklib:main functions."do:text/is_non_empty"{element:""} run return run function dorklib:impl/do/text/is_non_empty/loop_string
return fail
