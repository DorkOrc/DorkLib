# arguments: namespaced_id

$data modify storage dorklib:registered_ids map."$(namespaced_id)" set value {namespace:"minecraft",resolved_id:"minecraft$(namespaced_id)",implicit:true}
$data modify storage dorklib:registered_ids map."minecraft$(namespaced_id)" set value {namespace:"minecraft",resolved_id:"minecraft$(namespaced_id)",implicit:false}
$data modify storage dorklib:main functions."dorklib:util/register_namespaced_id".namespaced_id set value "minecraft$(namespaced_id)"
return 1
