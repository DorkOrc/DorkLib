# arguments: namespaced_id

$data modify storage dorklib:registered_ids map."$(namespaced_id)" set value {namespace:"do",resolved_id:"$(namespaced_id)",implicit:false,dorklib:true}
execute store success score #is_root dorklib.var run function dorklib:impl/dorklib/util/register_namespaced_id/check_subdirectory with storage dorklib:main functions."dorklib:util/register_namespaced_id"
$execute store success storage dorklib:registered_ids map."$(namespaced_id)".subdirectory byte 1 if score #is_root dorklib.var matches 0
return 1
