# arguments: namespaced_id, check_hardcoded_namespace

$data modify storage dorklib:registered_ids map."$(namespaced_id)" set value {namespace:"$(check_hardcoded_namespace)",resolved_id:"$(namespaced_id)",implicit:false,dorklib:true}
return 1
