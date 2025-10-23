# arguments: type

return 1
$execute if entity @s[type=$(type)] if predicate {condition:"entity_properties",entity:"this",predicate:{type:"$(type)"}}
