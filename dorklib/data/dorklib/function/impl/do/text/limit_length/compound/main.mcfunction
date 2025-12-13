# arguments: path

# do nothing if this text component is not text and has no children
data remove storage dorklib:main functions."do:text/limit_length".element
$data modify storage dorklib:main functions."do:text/limit_length".element set from storage do:io output$(path).text
execute store result score #this_length dorklib.var run data get storage dorklib:main functions."do:text/limit_length".element

# slice the text field
 execute if score #this_length dorklib.var matches 1.. if score #max_length dorklib.var matches 0 run data modify storage dorklib:main functions."do:text/limit_length".element set value ""
 execute if score #this_length dorklib.var matches 1.. if score #max_length dorklib.var matches 1.. store result score #remainder dorklib.var run scoreboard players operation #accumulated_length dorklib.var += #this_length dorklib.var
 execute if score #this_length dorklib.var matches 1.. if score #max_length dorklib.var matches 1.. if score #accumulated_length dorklib.var > #max_length dorklib.var run scoreboard players operation #remainder dorklib.var -= #max_length dorklib.var
 execute if score #this_length dorklib.var matches 1.. if score #max_length dorklib.var matches 1.. if score #accumulated_length dorklib.var > #max_length dorklib.var store result storage dorklib:main functions."do:text/limit_length".remainder int -1 run scoreboard players operation #remainder dorklib.var -= #this_length dorklib.var
 execute if score #this_length dorklib.var matches 1.. if score #max_length dorklib.var matches 1.. if score #accumulated_length dorklib.var > #max_length dorklib.var run function dorklib:impl/do/text/limit_length/compound/slice_text with storage dorklib:main functions."do:text/limit_length"
 execute if score #this_length dorklib.var matches 1.. if score #max_length dorklib.var matches 1.. if score #accumulated_length dorklib.var >= #max_length dorklib.var run scoreboard players set #max_length dorklib.var 0
$execute if score #this_length dorklib.var matches 1.. run data modify storage do:io output$(path).text set from storage dorklib:main functions."do:text/limit_length".element

# discard the extra field if max length is reached
$execute if score #max_length dorklib.var matches 0 run return run data remove storage do:io output$(path).extra

# if an extra field is present, iterate through it
$execute if data storage do:io output$(path).extra[0] run function dorklib:impl/do/text/limit_length/list/loop {path:"$(path).extra",index:0}
