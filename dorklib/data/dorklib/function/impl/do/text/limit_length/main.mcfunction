# arguments: length

data modify storage dorklib:main functions."do:text/limit_length".length set from storage do:io args.length

# resolve text component
function do:text/resolve

# if the resolved text component is not a compound then it must already be a string, so slice and return
$execute unless data storage do:io output{} run data modify storage do:io output set string storage do:io output 0 $(length)
execute unless data storage do:io output{} run return 1

# if the resolved text component does not have any children components, just slice the text field (if present) and return
$execute unless data storage do:io output.extra[0] if data storage do:io output.text run data modify storage do:io output.text set string storage do:io output.text 0 $(length)
execute unless data storage do:io output.extra[0] run return 1

# get substrings
scoreboard players set #accumulated_length dorklib.var 0
execute store result score #max_length dorklib.var run data get storage dorklib:main functions."do:text/limit_length".length
function dorklib:impl/do/text/limit_length/compound/main {path:""}
execute store result score #compound_length dorklib.var run data get storage do:io output
execute if score #compound_length dorklib.var matches 1 if data storage do:io output.text run return run data modify storage do:io output set from storage do:io output.text

return 1
