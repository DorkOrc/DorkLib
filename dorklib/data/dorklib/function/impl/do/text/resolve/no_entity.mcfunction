# replace all `@s`-related text components with empty strings
execute if data storage do:io input{} run function dorklib:impl/do/text/resolve/no_entity/compound {path:"input"}
execute if data storage do:io input[0] run function dorklib:impl/do/text/resolve/no_entity/list {path:"input"}

# resolve normally as this marker entity
return run function dorklib:impl/do/text/resolve/main
