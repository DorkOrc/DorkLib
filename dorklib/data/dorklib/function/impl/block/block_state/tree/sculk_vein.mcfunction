data modify storage do:io output set value {Name:"minecraft:sculk_vein",Properties:{down:"false",east:"false",north:"false",south:"false",up:"false",waterlogged:"false",west:"false"}}
execute if block ~ ~ ~ sculk_vein[down=true] run data modify storage do:io output.Properties.down set value "true"
execute if block ~ ~ ~ sculk_vein[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ sculk_vein[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ sculk_vein[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ sculk_vein[up=true] run data modify storage do:io output.Properties.up set value "true"
execute if block ~ ~ ~ sculk_vein[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ sculk_vein[west=true] run data modify storage do:io output.Properties.west set value "true"
