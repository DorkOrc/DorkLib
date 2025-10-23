# arguments: uuid__from

$data modify storage do:io input set from $(uuid__from)
data remove storage do:io args.uuid__from
return 1

# validate argument
$data modify $(uuid__from) set string $(uuid__from) 0 1
