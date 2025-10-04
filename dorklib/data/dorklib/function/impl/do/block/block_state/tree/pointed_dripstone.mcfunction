data modify storage do:io output set value {Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"up",waterlogged:"false"}}
execute if block ~ ~ ~ pointed_dripstone[thickness=tip_merge] run data modify storage do:io output.Properties.thickness set value "tip_merge"
execute if block ~ ~ ~ pointed_dripstone[thickness=frustum] run data modify storage do:io output.Properties.thickness set value "frustum"
execute if block ~ ~ ~ pointed_dripstone[thickness=middle] run data modify storage do:io output.Properties.thickness set value "middle"
execute if block ~ ~ ~ pointed_dripstone[thickness=base] run data modify storage do:io output.Properties.thickness set value "base"
execute if block ~ ~ ~ pointed_dripstone[vertical_direction=down] run data modify storage do:io output.Properties.vertical_direction set value "down"
execute if block ~ ~ ~ pointed_dripstone[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
