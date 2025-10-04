# arguments: namespaced_id, namespace

$data modify storage dorklib:registered_ids map."$(namespaced_id)" set value {namespace:"$(namespace)",resolved_id:"$(namespaced_id)",implicit:false}
return 1
