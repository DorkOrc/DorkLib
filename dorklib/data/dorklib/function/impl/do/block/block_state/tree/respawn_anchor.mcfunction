data modify storage do:io output set value {Name:"minecraft:respawn_anchor",Properties:{charges:"0"}}
execute if block ~ ~ ~ respawn_anchor[charges=1] run data modify storage do:io output.Properties.charges set value "1"
execute if block ~ ~ ~ respawn_anchor[charges=2] run data modify storage do:io output.Properties.charges set value "2"
execute if block ~ ~ ~ respawn_anchor[charges=3] run data modify storage do:io output.Properties.charges set value "3"
execute if block ~ ~ ~ respawn_anchor[charges=4] run data modify storage do:io output.Properties.charges set value "4"
