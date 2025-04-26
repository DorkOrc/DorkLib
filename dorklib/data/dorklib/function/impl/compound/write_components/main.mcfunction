# validate arguments
execute unless data storage do:io input{} run return run function dorklib:exception {args:{message:"Input is not a compound"}}
execute if data storage do:io args.components unless data storage do:io args{components:[]} unless data storage do:io args.components[0] run return run function dorklib:exception {args:{message:"Components argument is not a list"}}
execute if data storage do:io args.predicates unless data storage do:io args.predicates{} run return run function dorklib:exception {args:{message:"Predicates argument is not a compound"}}
data modify storage dorklib:main functions."do:compound/write_components".args set from storage do:io args

# get text components from input
function do:compound/items
data modify storage dorklib:main functions."do:compound/write_components".items set from storage do:io output
execute if data storage dorklib:main functions."do:compound/write_components".items run function dorklib:impl/compound/write_components/loop

# get text components from args.predicates
execute if data storage dorklib:main functions."do:compound/write_components".args.predicates run function dorklib:impl/compound/write_components/append_predicates

# get text components from args.components
execute if data storage dorklib:main functions."do:compound/write_components".args.components run function dorklib:impl/compound/write_components/append_components

# flatten result
data modify storage do:io input set value ["[",{storage:"dorklib:main",nbt:'functions."do:compound/write_components".output_text_components[]',interpret:true,separator:","},"]"]
function do:text/flatten

return 1
