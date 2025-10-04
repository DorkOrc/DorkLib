data modify storage do:io output set value {Name:"minecraft:jungle_fence",Properties:{east:"false",north:"false",south:"false",waterlogged:"false",west:"false"}}
execute if block ~ ~ ~ jungle_fence[east=true] run data modify storage do:io output.Properties.east set value "true"
execute if block ~ ~ ~ jungle_fence[north=true] run data modify storage do:io output.Properties.north set value "true"
execute if block ~ ~ ~ jungle_fence[south=true] run data modify storage do:io output.Properties.south set value "true"
execute if block ~ ~ ~ jungle_fence[waterlogged=true] run data modify storage do:io output.Properties.waterlogged set value "true"
execute if block ~ ~ ~ jungle_fence[west=true] run data modify storage do:io output.Properties.west set value "true"
