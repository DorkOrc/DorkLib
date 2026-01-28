data modify storage dorklib:main functions."do:text/is_non_empty".element set from storage dorklib:main functions."do:text/is_non_empty".stack[-1]
data remove storage dorklib:main functions."do:text/is_non_empty".stack[-1]
data modify storage dorklib:main functions."do:text/is_non_empty".stack append from storage dorklib:main functions."do:text/is_non_empty".element.extra[]

execute if data storage dorklib:main functions."do:text/is_non_empty".element{} unless data storage dorklib:main functions."do:text/is_non_empty".element.text run return 1

data modify storage dorklib:main functions."do:text/is_non_empty".element set from storage dorklib:main functions."do:text/is_non_empty".element.text
execute unless data storage dorklib:main functions."do:text/is_non_empty"{element:""} if function dorklib:impl/do/text/is_non_empty/loop_string run return 1

execute if data storage dorklib:main functions."do:text/is_non_empty".stack[0] run return run function dorklib:impl/do/text/is_non_empty/loop_elements
return 0
