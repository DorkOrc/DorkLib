function do:text/resolve

data modify storage dorklib:main functions."do:text/is_non_empty".stack append from storage do:io output
execute if function dorklib:impl/do/text/is_non_empty/loop_elements run return 1
return 0
