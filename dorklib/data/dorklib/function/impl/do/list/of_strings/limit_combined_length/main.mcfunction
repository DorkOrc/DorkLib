# validate input
execute unless data storage do:io input[0] unless data storage do:io {input:[]} unless data storage do:io {input:[B;]} unless data storage do:io {input:[I;]} unless data storage do:io {input:[L;]} run return run function dorklib:exception {args:{message:"Input is not a list"}}

# get max length
execute unless data storage do:io args.length run return run function dorklib:exception {args:{message:"Missing \"length\" argument"}}
execute store result score #length_left dorklib.var run data get storage do:io args.length
execute unless score #length_left dorklib.var matches 1.. run return run function dorklib:exception {args:{message:"The \"length\" argument must be at least 1"}}

# loop
data modify storage do:io output set value []
function dorklib:impl/do/list/of_strings/limit_combined_length/loop

return 1
