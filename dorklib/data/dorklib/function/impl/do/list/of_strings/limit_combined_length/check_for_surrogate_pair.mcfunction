# arguments: last_char

$execute if data storage dorklib:constant surrogate_pairs.high."$(last_char)" run data modify storage do:io output[-1] set string storage do:io output[-1] 0 -1
