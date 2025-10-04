data modify storage do:io output set value {Name:"minecraft:acacia_fence",Properties:{east:"false",north:"false",south:"false",waterlogged:"false",west:"false"}}
execute if block ~ ~ ~ acacia_fence[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ acacia_fence[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ acacia_fence[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ acacia_fence[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ acacia_fence[west=true] run data modify storage do:io output.Properties.west set value "true"
