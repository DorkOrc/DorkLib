data modify storage do:io output set value {Name:"minecraft:vault",Properties:{facing:"north",ominous:"false",vault_state:"inactive"}}
execute if block ~ ~ ~ vault[facing=south] run data modify storage do:io output.Properties.facing set value "south"
execute if block ~ ~ ~ vault[facing=west] run data modify storage do:io output.Properties.facing set value "west"
execute if block ~ ~ ~ vault[facing=east] run data modify storage do:io output.Properties.facing set value "east"
execute if block ~ ~ ~ vault[ominous=true] run data modify storage do:io output.Properties.ominous set value "true"
execute if block ~ ~ ~ vault[vault_state=active] run data modify storage do:io output.Properties.vault_state set value "active"
execute if block ~ ~ ~ vault[vault_state=unlocking] run data modify storage do:io output.Properties.vault_state set value "unlocking"
execute if block ~ ~ ~ vault[vault_state=ejecting] run data modify storage do:io output.Properties.vault_state set value "ejecting"
