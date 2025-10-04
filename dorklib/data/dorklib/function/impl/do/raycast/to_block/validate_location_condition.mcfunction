# arguments: location_condition

execute unless data storage do:io args.location_condition{} unless data storage do:io args.location_condition[0] unless data storage do:io args{location_condition:[]} run return run function dorklib:impl/do/raycast/to_block/validate_location_condition_reference with storage do:io args

scoreboard players set #valid_predicate dorklib.var 1

return 1
$execute if predicate $(location_condition)
