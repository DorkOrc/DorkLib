# arguments: namespaced_id

$data modify storage dorklib:registered_ids map."$(namespaced_id)" set value {namespace:"minecraft",resolved_id:"$(namespaced_id)",implicit:false}
return 1
