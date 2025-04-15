# resolve text component
function do:text/resolve

# default output is an empty string
data modify storage dorklib:main functions."do:text/flatten".components set value []
data modify storage dorklib:main functions."do:text/flatten".components append from storage do:io output

data modify storage do:io input set value []

function dorklib:impl/text/flatten/loop

function do:str/join

return 1
