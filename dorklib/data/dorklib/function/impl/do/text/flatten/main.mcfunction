# resolve text component
function do:text/resolve

# if the resolved text component is not a compound then it must already be a string, so return here
execute unless data storage do:io output{} run return 1

# if the resolved text component does not have any children components, just return the text field (or an empty string if not present)
execute unless data storage do:io output.extra[0] if data storage do:io output.text run return run data modify storage do:io output set from storage do:io output.text
execute unless data storage do:io output.extra[0] run return run data modify storage do:io output set value ""

# get substrings
data modify storage do:io input set value []
data modify storage dorklib:main functions."do:text/flatten".components set value []
data modify storage dorklib:main functions."do:text/flatten".components append from storage do:io output
function dorklib:impl/do/text/flatten/loop

# concatenate substrings
function do:str/join

return 1
