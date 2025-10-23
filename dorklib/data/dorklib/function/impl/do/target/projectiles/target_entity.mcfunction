# arguments: uuid, function

data remove storage dorklib:main functions."do:target/anger_suspects".anger_suspects[-1]
execute if data storage dorklib:main functions."do:target/anger_suspects".anger_suspects[0] run function dorklib:impl/do/target/anger_suspects/target_entity with storage dorklib:main functions."do:target/anger_suspects".anger_suspects[-1]

$data merge storage do:io {input:$(uuid),args:{function:"$(function)"}}
function do:target/uuid
