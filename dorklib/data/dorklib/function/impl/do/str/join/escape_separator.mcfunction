data modify storage do:io input set from storage do:io args.separator
function do:str/escape/double_quote
data modify storage dorklib:main functions."do:str/join".separator set from storage do:io output
