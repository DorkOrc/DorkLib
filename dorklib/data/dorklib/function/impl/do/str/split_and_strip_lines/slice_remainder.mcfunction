# arguments: separator_max_index

data modify storage dorklib:main functions."do:str/split".remainder set from storage dorklib:main functions."do:str/split".temp_string
$data modify storage dorklib:main functions."do:str/split".remainder set string storage dorklib:main functions."do:str/split".temp_string 0 $(separator_max_index)
