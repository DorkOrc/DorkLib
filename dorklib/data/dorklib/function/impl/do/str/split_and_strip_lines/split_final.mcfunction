# arguments: start_index

$data modify storage do:io output append string storage dorklib:main functions."do:str/split_and_strip_lines".string $(start_index)

return 1
